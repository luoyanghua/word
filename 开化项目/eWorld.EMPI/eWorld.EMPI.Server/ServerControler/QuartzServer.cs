using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;
using log4net;
using Quartz;
using Quartz.Impl;
using Quartz.Impl.Matchers;
using Topshelf;
using System.Threading;
using eWorld.EMPI.Configuration;
using eWorld.EMPI.Job;
using eWorld.EMPI.Model;

namespace eWorld.EMPI.Server.ServerControler
{
    public class QuartzServer : ServiceControl
    {
        private readonly ILog _logger;
        private ISchedulerFactory schedulerFactory;
        private IScheduler scheduler;
        private Thread _threadServiceControl = null;
        private bool _serverStop = false;
        private string jobUID = string.Empty;
        private string jobName = string.Empty;

        /// <summary>
        /// Initializes a new instance of the <see cref="QuartzServer"/> class.
        /// </summary>
        public QuartzServer()
        {
            _logger = LogManager.GetLogger(GetType());
        }
        /// <summary>
        /// Gets the scheduler with which this server should operate with.
        /// </summary>
        /// <returns></returns>
        protected virtual IScheduler GetScheduler()
        {
            return schedulerFactory.GetScheduler();
        }

        /// <summary>
        /// Returns the current scheduler instance (usually created in <see cref="Initialize" />
        /// using the <see cref="GetScheduler" /> method).
        /// </summary>
        protected virtual IScheduler Scheduler
        {
            get { return scheduler; }
        }

        /// <summary>
        /// Creates the scheduler factory that will be the factory
        /// for all schedulers on this instance.
        /// </summary>
        /// <returns></returns>
        protected virtual ISchedulerFactory CreateSchedulerFactory()
        {
            return new StdSchedulerFactory();
        }

        /// <summary>
        /// Starts this instance, delegates to scheduler.
        /// </summary>
        public virtual void Start()
        {
            _logger.Info("开始启动eWorld.EMPI.Server服务。");
            try
            {
                schedulerFactory = CreateSchedulerFactory();
                scheduler = GetScheduler();
                GetJobTriggerFromDb();
                QuartzTriggerListener TriggerListener = new QuartzTriggerListener();
                scheduler.ListenerManager.AddTriggerListener(TriggerListener, EverythingMatcher<TriggerKey>.AllTriggers());

                scheduler.Start();
                _threadServiceControl = new Thread(ServiceControlThread);
                _threadServiceControl.Start();

            }
            catch (Exception ex)
            {
                _logger.Fatal(string.Format("启动Scheduler出现异常: {0}", ex.Message), ex);
                if (scheduler != null)
                {
                    scheduler.Shutdown();
                }
                throw;
            }

            _logger.Info("启动eWorld.EMPI.Server服务服务成功。");
        }

        /// <summary>
        /// Stops this instance, delegates to scheduler.
        /// </summary>
        public virtual void Stop()
        {
            try
            {
                scheduler.Shutdown(false);
                _serverStop = true;
            }
            catch (Exception ex)
            {
                _logger.Error(string.Format("停止eWorld.EMPI.Server服务服务出现异常: {0}", ex.Message), ex);
                throw;
            }
            _logger.Info("停止eWorld.EMPI.Server服务服务成功。");
        }

        /// <summary>
        /// TopShelf's method delegated to <see cref="Start()"/>.
        /// </summary>
        public bool Start(HostControl hostControl)
        {
            Start();
            return true;
        }

        /// <summary>
        /// TopShelf's method delegated to <see cref="Stop()"/>.
        /// </summary>
        public bool Stop(HostControl hostControl)
        {
            Stop();
            return true;
        }

        private void ServiceControlThread()
        {
            try
            {
                while (_serverStop == false)
                {
                    Thread.Sleep(2000);
                    if (!string.IsNullOrWhiteSpace(AppConfig.GetConfig("ControlCode")))
                    {
                        var controlCode = AppConfig.GetConfig("ControlCode");//控制码，0-正常、1-停止服务、2-重起服务。

                        Process p = new Process();
                        p.StartInfo.FileName = "cmd.exe";
                        p.StartInfo.UseShellExecute = false;
                        p.StartInfo.RedirectStandardInput = true;
                        p.StartInfo.RedirectStandardOutput = true;
                        p.StartInfo.CreateNoWindow = true;
                        if (controlCode == "1")
                        {
                            _logger.Info(string.Format("JobServer.ControlCode={0}，停止服务。", controlCode));
                            p.StartInfo.Arguments = string.Format("/C net stop {0}", QuartzServerConfig.ServiceName);
                        }
                        else if (controlCode == "2")
                        {
                            _logger.Info(string.Format("JobServer.ControlCode={0}，重起服务。", controlCode));
                            p.StartInfo.Arguments = string.Format("/C net stop {0} && net start {0}", QuartzServerConfig.ServiceName);
                        }
                        p.Start();
                        p.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                _logger.Error("服务控制线程出现异常。", ex);
            }
        }

        /// <summary>
        /// Load DB Job and Trigger
        /// </summary>
        public virtual void GetJobTriggerFromDb()
        {
            var item = GetJobList();
            _logger.Info(string.Format("创建任务触发，JobUID={0}，JobName={1}", item.JobUID, item.JobName));
            Type type = Type.GetType(item.JobClass);
            var job = JobBuilder.Create(type)
                  .WithIdentity(item.JobUID)
                  .UsingJobData("JobName", item.JobName)
                  .Build();
            TriggerBuilder simpleTriggerBuilder = TriggerBuilder.Create()
              .WithIdentity(Guid.NewGuid().ToString())
              .ForJob(job).StartNow();
            int simpleRepeatInterval = 6;
            if (!string.IsNullOrWhiteSpace(item.SimpleRepeatInterval))
            {
                simpleRepeatInterval = Convert.ToInt32(item.SimpleRepeatInterval);
            }
            simpleTriggerBuilder = simpleTriggerBuilder.WithSimpleSchedule(x => x
                 .WithIntervalInSeconds(simpleRepeatInterval)//触发时间，秒
                 .RepeatForever());
            var trigger = simpleTriggerBuilder.Build();
            if (scheduler.CheckExists(job.Key))
            {
                //schedule the job
                scheduler.ScheduleJob(trigger);
            }
            else
                scheduler.ScheduleJob(job, trigger);
        }

        private JobConfigDTO GetJobList()
        {
            var info = new JobConfigDTO();
            info.JobUID = "60c89fca-3170-4a07-8c50-c95f3ff28491";
            info.JobName = "同步患者主索引作业任务";
            info.JobClass = "eWorld.EMPI.Job.IDCASExamInfoToEMPI,eWorld.EMPI.Job";
            info.SimpleRepeatInterval = AppConfig.GetConfig("SimpleRepeatInterval");
            return info;
        }

    }
}
