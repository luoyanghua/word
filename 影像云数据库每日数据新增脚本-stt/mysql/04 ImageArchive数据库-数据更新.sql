/*============================================================================================*/
/* 影像云存储共享JobServer字典脚本                                                                               */
/* UpdateDate:2018-03-26                                                                      */
/* Author:Shentt                                                                              */
/*============================================================================================*/


-- JobDefineMst 
/* 20180209 修改 */
UPDATE ImageArchive.JobDefineMst SET JobName='检查数据采集（IMCIS—〉IDCAS）', JobClassName='eWorld.Job.IMCISToIDCASJob, eWorld.Job', JobDescription='从集成平台经检查数据同步到云平台', ActiveFlag='1' WHERE JobUID='c8b0759a-71ce-4e51-ab54-c9b8d531f98a';



/* 20180326 新增 */
INSERT INTO ImageArchive.JobDefineMst( JobUID, JobName, JobClassName, JobDescription, ActiveFlag )
SELECT 'ff674965-1f70-4c93-b821-4e9fc90e4513', '检查数据采集(IDCAS->IDCAS)', 'eWorld.Job.ImageCloudTOIDCASJob,eWorld.Job', '从云归档获取检查信息同步到另一个云归档', '1'
FROM DUAL 
WHERE NOT EXISTS(SELECT JobUID,JobName FROM ImageArchive.JobDefineMst WHERE JobUID='ff674965-1f70-4c93-b821-4e9fc90e4513' AND JobName='检查数据采集(IDCAS->IDCAS)');
