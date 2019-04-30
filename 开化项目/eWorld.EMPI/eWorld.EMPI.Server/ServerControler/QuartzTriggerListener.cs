using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using log4net;
using Quartz;

namespace eWorld.EMPI.Server.ServerControler
{
    public class QuartzTriggerListener : ITriggerListener
    {
        private readonly ILog _log;

        public QuartzTriggerListener()
        {
            _log = LogManager.GetLogger(GetType());
        }
        public string Name
        {
            get { return "QuartzTriggerListener"; }
        }

        public void TriggerFired(ITrigger trigger, IJobExecutionContext context)
        {
            _log.Debug(string.Format("TriggerFired，TriggerName={0}", trigger.Key.Name));
            try
            {

            }
            catch (Exception ex)
            {
                _log.Error(string.Format("TriggerFired事件执行出现异常"), ex);
            }
        }
        /// <summary>
        /// true 实现vetos执行，作业执行方法将不会被调用
        /// </summary>
        /// <param name="trigger"></param>
        /// <param name="context"></param>
        /// <returns></returns>
        public bool VetoJobExecution(ITrigger trigger, IJobExecutionContext context)
        {
            return false;
        }

        public void TriggerMisfired(ITrigger trigger)
        {
        }

        public void TriggerComplete(ITrigger trigger,
                                    IJobExecutionContext context,
                                    SchedulerInstruction triggerInstructionCode)
        {
        }
    }
}
