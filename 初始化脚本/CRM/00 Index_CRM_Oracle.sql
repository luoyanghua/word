/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2018/4/20 14:21:59                           */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_ACONTROL_CLIENTID"                                */
/*==============================================================*/
CREATE INDEX "IX_ACONTROL_CLIENTID" ON "ACCESSCONTROL" (
   "CLIENTID" ASC
);

/*==============================================================*/
/* Index: "IX_ACONTROL_CLIENTSECRET"                            */
/*==============================================================*/
CREATE INDEX "IX_ACONTROL_CLIENTSECRET" ON "ACCESSCONTROL" (
   "CLIENTSECRET" ASC
);

/*==============================================================*/
/* Index: "IX_CET_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_CET_SERVICECENTERID" ON "CENTEREXAMINETYPE" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_CSR_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_CSR_SERVICECENTERID" ON "CENTERSIGNRECORD" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_CHMAP_INSTITUTIONGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_CHMAP_INSTITUTIONGUID" ON "CENTER_HOSPITAL_MAPPING" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_CHMAP_SERVICECENTERID"                            */
/*==============================================================*/
CREATE INDEX "IX_CHMAP_SERVICECENTERID" ON "CENTER_HOSPITAL_MAPPING" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_CAS_CLOUDID"                                      */
/*==============================================================*/
CREATE INDEX "IX_CAS_CLOUDID" ON "CLOUDAPISERVER" (
   "CLOUDID" ASC
);

/*==============================================================*/
/* Index: "IX_CUSTOMER_CGUID"                                   */
/*==============================================================*/
CREATE UNIQUE INDEX "IX_CUSTOMER_CGUID" ON "CUSTOMER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_CUSTOMER_USERID"                                  */
/*==============================================================*/
CREATE UNIQUE INDEX "IX_CUSTOMER_USERID" ON "CUSTOMER" (
   "USERID" ASC
);

/*==============================================================*/
/* Index: "IX_CUSTOMER_CUSTOMERNAME"                            */
/*==============================================================*/
CREATE INDEX "IX_CUSTOMER_CUSTOMERNAME" ON "CUSTOMER" (
   "CUSTOMERNAME" ASC
);

/*==============================================================*/
/* Index: "IX_CUSTOMER_EMAIL"                                   */
/*==============================================================*/
CREATE INDEX "IX_CUSTOMER_EMAIL" ON "CUSTOMER" (
   "EMAIL" ASC
);

/*==============================================================*/
/* Index: "IX_CUSTOMER_PHONE"                                   */
/*==============================================================*/
CREATE UNIQUE INDEX "IX_CUSTOMER_PHONE" ON "CUSTOMER" (
   "PHONE" ASC
);

/*==============================================================*/
/* Index: "IX_CUSTOMER_STATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_CUSTOMER_STATE" ON "CUSTOMER" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_CUSTOMER_CREATEDONUTC"                            */
/*==============================================================*/
CREATE INDEX "IX_CUSTOMER_CREATEDONUTC" ON "CUSTOMER" (
   "CREATEDONUTC" ASC
);

/*==============================================================*/
/* Index: "IX_CUSTOMER_ISSYNC"                                  */
/*==============================================================*/
CREATE INDEX "IX_CUSTOMER_ISSYNC" ON "CUSTOMER" (
   "ISSYNC" ASC
);

/*==============================================================*/
/* Index: "IX_CCG_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_CCG_CUSTOMERGUID" ON "CUSTOMERCIRCLEGROUP" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_CCGM_GROUPID"                                     */
/*==============================================================*/
CREATE INDEX "IX_CCGM_GROUPID" ON "CUSTOMERCIRCLEGROUPMEMBER" (
   "GROUPID" ASC
);

/*==============================================================*/
/* Index: "IX_CCR_REQCUSTOMERGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_CCR_REQCUSTOMERGUID" ON "CUSTOMERCIRCLEREQUEST" (
   "REQUESTCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_CCR_RESCUSTOMERGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_CCR_RESCUSTOMERGUID" ON "CUSTOMERCIRCLEREQUEST" (
   "RESPONSECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_CCONFIG_CUSTOMERGUID"                             */
/*==============================================================*/
CREATE INDEX "IX_CCONFIG_CUSTOMERGUID" ON "CUSTOMERCONFIG" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_CCONFIG_SERVICECENTERID"                          */
/*==============================================================*/
CREATE INDEX "IX_CCONFIG_SERVICECENTERID" ON "CUSTOMERCONFIG" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_CCONFIG_INSTITUTIONGUID"                          */
/*==============================================================*/
CREATE INDEX "IX_CCONFIG_INSTITUTIONGUID" ON "CUSTOMERCONFIG" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_CCONFIG__CITEMNAME"                               */
/*==============================================================*/
CREATE INDEX "IX_CCONFIG__CITEMNAME" ON "CUSTOMERCONFIG" (
   "CONFIGITEMNAME" ASC
);

/*==============================================================*/
/* Index: "IX_CS_SHAREGUID"                                     */
/*==============================================================*/
CREATE INDEX "IX_CS_SHAREGUID" ON "CUSTOMERSHARE" (
   "SHAREGUID" ASC
);

/*==============================================================*/
/* Index: "IX_CS_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_CS_CUSTOMERGUID" ON "CUSTOMERSHARE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_CS_INSTITUTIONGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_CS_INSTITUTIONGUID" ON "CUSTOMERSHARE" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DETOTAL_CUSTOMERGUID"                             */
/*==============================================================*/
CREATE INDEX "IX_DETOTAL_CUSTOMERGUID" ON "DOCTOREVALUATIONTOTAL" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DKWORD_CUSTOMERGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_DKWORD_CUSTOMERGUID" ON "DOCTORKEYWORD" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DKWORD_KEYWORD"                                   */
/*==============================================================*/
CREATE INDEX "IX_DKWORD_KEYWORD" ON "DOCTORKEYWORD" (
   "KEYWORD" ASC
);

/*==============================================================*/
/* Index: "IX_DOCTORMEMBER_CGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_DOCTORMEMBER_CGUID" ON "DOCTORMEMBER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DOCTORMEMBER_TKCODE"                              */
/*==============================================================*/
CREATE INDEX "IX_DOCTORMEMBER_TKCODE" ON "DOCTORMEMBER" (
   "TITLEKINDCODE" ASC
);

/*==============================================================*/
/* Index: "IX_DOCTORMEMBER_TCODE"                               */
/*==============================================================*/
CREATE INDEX "IX_DOCTORMEMBER_TCODE" ON "DOCTORMEMBER" (
   "TITLECODE" ASC
);

/*==============================================================*/
/* Index: "IX_DOCTORMEMBER_OFFICEID"                            */
/*==============================================================*/
CREATE INDEX "IX_DOCTORMEMBER_OFFICEID" ON "DOCTORMEMBER" (
   "OFFICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DOCTORMEMBER_HCODE"                               */
/*==============================================================*/
CREATE INDEX "IX_DOCTORMEMBER_HCODE" ON "DOCTORMEMBER" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_DOCTORMEMBER_ISEXPERT"                            */
/*==============================================================*/
CREATE INDEX "IX_DOCTORMEMBER_ISEXPERT" ON "DOCTORMEMBER" (
   "ISEXPERT" ASC
);

/*==============================================================*/
/* Index: "IX_DOCTORMEMBER_ISPLAT"                              */
/*==============================================================*/
CREATE INDEX "IX_DOCTORMEMBER_ISPLAT" ON "DOCTORMEMBER" (
   "ISPLAT" ASC
);

/*==============================================================*/
/* Index: "IX_DMSD_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_DMSD_CUSTOMERGUID" ON "DOCTORMEMBERSUBDEFINE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DO_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_DO_CUSTOMERGUID" ON "DOCTOROFFICE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DQCENTER_CUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_DQCENTER_CUSTOMERGUID" ON "DOCTORQUALITYCENTER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DQCENTER_QUALITYCENTERID"                         */
/*==============================================================*/
CREATE INDEX "IX_DQCENTER_QUALITYCENTERID" ON "DOCTORQUALITYCENTER" (
   "QUALITYCENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_DQCENTER_HOSPITALCODE"                            */
/*==============================================================*/
CREATE INDEX "IX_DQCENTER_HOSPITALCODE" ON "DOCTORQUALITYCENTER" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_DSERVICE_CUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_DSERVICE_CUSTOMERGUID" ON "DOCTORSERVICE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DSERVICE_SCENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_DSERVICE_SCENTERID" ON "DOCTORSERVICE" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_DSCENTER_CUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_DSCENTER_CUSTOMERGUID" ON "DOCTORSERVICECENTER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DSCENTER_SERVICECENTERID"                         */
/*==============================================================*/
CREATE INDEX "IX_DSCENTER_SERVICECENTERID" ON "DOCTORSERVICECENTER" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_DSR_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_DSR_CUSTOMERGUID" ON "DOCTORSTARRATE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DTOTAL_CUSTOMERGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_DTOTAL_CUSTOMERGUID" ON "DOCTORTOTAL" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DTOTAL_SCENTERID"                                 */
/*==============================================================*/
CREATE INDEX "IX_DTOTAL_SCENTERID" ON "DOCTORTOTAL" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_FL_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_FL_CUSTOMERGUID" ON "FROZENLIST" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_FL_INSTITUTIONGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_FL_INSTITUTIONGUID" ON "FROZENLIST" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_FL_SERVICECENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_FL_SERVICECENTERID" ON "FROZENLIST" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_FL_KIND"                                          */
/*==============================================================*/
CREATE INDEX "IX_FL_KIND" ON "FROZENLIST" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_HCSR_INSTITUTIONGUID"                             */
/*==============================================================*/
CREATE INDEX "IX_HCSR_INSTITUTIONGUID" ON "HOSPITALCENTERSIGNRECORD" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_HCSR_SERVICECENTERID"                             */
/*==============================================================*/
CREATE INDEX "IX_HCSR_SERVICECENTERID" ON "HOSPITALCENTERSIGNRECORD" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_HG_INSTITUTIONGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_HG_INSTITUTIONGUID" ON "HOSPITALGROUP" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_INSTITUTION_IGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_INSTITUTION_IGUID" ON "INSTITUTION" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_INSTITUTION_KIND"                                 */
/*==============================================================*/
CREATE INDEX "IX_INSTITUTION_KIND" ON "INSTITUTION" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_INSTITUTION_PROID"                                */
/*==============================================================*/
CREATE INDEX "IX_INSTITUTION_PROID" ON "INSTITUTION" (
   "PROID" ASC
);

/*==============================================================*/
/* Index: "IX_INSTITUTION_CITYID"                               */
/*==============================================================*/
CREATE INDEX "IX_INSTITUTION_CITYID" ON "INSTITUTION" (
   "CITYID" ASC
);

/*==============================================================*/
/* Index: "IX_INSTITUTION_COUNTYID"                             */
/*==============================================================*/
CREATE INDEX "IX_INSTITUTION_COUNTYID" ON "INSTITUTION" (
   "COUNTYID" ASC
);

/*==============================================================*/
/* Index: "IX_INSTITUTION_REGDATE"                              */
/*==============================================================*/
CREATE INDEX "IX_INSTITUTION_REGDATE" ON "INSTITUTION" (
   "REGDATE" ASC
);

/*==============================================================*/
/* Index: "IX_INSTITUTION_STATE"                                */
/*==============================================================*/
CREATE INDEX "IX_INSTITUTION_STATE" ON "INSTITUTION" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_IA_INSTITUTIONGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_IA_INSTITUTIONGUID" ON "INSTITUTIONAPPLY" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IA_TELPHONE"                                      */
/*==============================================================*/
CREATE INDEX "IX_IA_TELPHONE" ON "INSTITUTIONAPPLY" (
   "TELPHONE" ASC
);

/*==============================================================*/
/* Index: "IX_IDA_GRANTINSTITUTIONGUID"                         */
/*==============================================================*/
CREATE INDEX "IX_IDA_GRANTINSTITUTIONGUID" ON "INSTITUTIONDATAACCESS" (
   "GRANTINSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IDA_GRANTINSTITUTIONLCODE"                        */
/*==============================================================*/
CREATE INDEX "IX_IDA_GRANTINSTITUTIONLCODE" ON "INSTITUTIONDATAACCESS" (
   "GRANTINSTITUTIONLCODE" ASC
);

/*==============================================================*/
/* Index: "IX_IDA_ACCESSINSTITUTIONGUID"                        */
/*==============================================================*/
CREATE INDEX "IX_IDA_ACCESSINSTITUTIONGUID" ON "INSTITUTIONDATAACCESS" (
   "ACCESSINSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IDA_STATE"                                        */
/*==============================================================*/
CREATE INDEX "IX_IDA_STATE" ON "INSTITUTIONDATAACCESS" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_IDS_INSTITUTIONGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_IDS_INSTITUTIONGUID" ON "INSTITUTIONDISKSPACE" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IMANAGER_CUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_IMANAGER_CUSTOMERGUID" ON "INSTITUTIONMANAGER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IMANAGER_INSTITUTIONGUID"                         */
/*==============================================================*/
CREATE INDEX "IX_IMANAGER_INSTITUTIONGUID" ON "INSTITUTIONMANAGER" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IMAP_MINSTITUTIONGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_IMAP_MINSTITUTIONGUID" ON "INSTITUTIONMAPPING" (
   "MINSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IMAP_CINSTITUTIONGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_IMAP_CINSTITUTIONGUID" ON "INSTITUTIONMAPPING" (
   "CINSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IOPEN_INSTITUTIONGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_IOPEN_INSTITUTIONGUID" ON "INSTITUTIONOPEN" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IPP_INSTITUTIONGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_IPP_INSTITUTIONGUID" ON "INSTITUTIONPROPIC" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IPP_ATTRIBUTEVALUE"                               */
/*==============================================================*/
CREATE INDEX "IX_IPP_ATTRIBUTEVALUE" ON "INSTITUTIONPROPIC" (
   "ATTRIBUTEVALUE" ASC
);

/*==============================================================*/
/* Index: "IX_ISR_INSTITUTIONGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_ISR_INSTITUTIONGUID" ON "INSTITUTIONSTARRATE" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IVT_INSTITUTIONGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_IVT_INSTITUTIONGUID" ON "INSTITUTIONVIDEOTIME" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ICM_INSTITUTIONGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_ICM_INSTITUTIONGUID" ON "INSTITUTION_CLOUD_MAPPING" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ICM_CLOUDID"                                      */
/*==============================================================*/
CREATE INDEX "IX_ICM_CLOUDID" ON "INSTITUTION_CLOUD_MAPPING" (
   "CLOUDID" ASC
);

/*==============================================================*/
/* Index: "IX_LEADER_CUSTOMERGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_LEADER_CUSTOMERGUID" ON "LEADER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_LEADER_INSTITUTIONGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_LEADER_INSTITUTIONGUID" ON "LEADER" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_LA_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_LA_CUSTOMERGUID" ON "LICENSEAGREEMENT" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_LA_LICENSEID"                                     */
/*==============================================================*/
CREATE INDEX "IX_LA_LICENSEID" ON "LICENSEAGREEMENT" (
   "LICENSEID" ASC
);

/*==============================================================*/
/* Index: "IX_MDTG_SERVICECENTERID"                             */
/*==============================================================*/
CREATE INDEX "IX_MDTG_SERVICECENTERID" ON "MDTGROUP" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_MDTG_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_MDTG_CUSTOMERGUID" ON "MDTGROUP" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MDTGD_MDTGROUPID"                                 */
/*==============================================================*/
CREATE INDEX "IX_MDTGD_MDTGROUPID" ON "MDTGROUPDOCTOR" (
   "MDTGROUPID" ASC
);

/*==============================================================*/
/* Index: "IX_MDTGD_CUSTOMERGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_MDTGD_CUSTOMERGUID" ON "MDTGROUPDOCTOR" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MDTGD_SERVICECENTERID"                            */
/*==============================================================*/
CREATE INDEX "IX_MDTGD_SERVICECENTERID" ON "MDTGROUPDOCTOR" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_MS_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_MS_CUSTOMERGUID" ON "MEDICALSTAFF" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MS_HOSPITALCODE"                                  */
/*==============================================================*/
CREATE INDEX "IX_MS_HOSPITALCODE" ON "MEDICALSTAFF" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_MCS_INSTITUTIONGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_MCS_INSTITUTIONGUID" ON "MEMBERCENTERSERVICE" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MCS_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_MCS_SERVICECENTERID" ON "MEMBERCENTERSERVICE" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_MHOSPITAL_IGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_MHOSPITAL_IGUID" ON "MEMBERHOSPITAL" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MHOSPITAL_HGGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_MHOSPITAL_HGGUID" ON "MEMBERHOSPITAL" (
   "HOSPITALGROUPGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MM_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_MM_CUSTOMERGUID" ON "MONITORMANAGER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MCA_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_MCA_CUSTOMERGUID" ON "MYCATALOG" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MC_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_MC_CUSTOMERGUID" ON "MYCOLLECTION" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MCO_COLLECTIONID"                                 */
/*==============================================================*/
CREATE INDEX "IX_MCO_COLLECTIONID" ON "MYCOLLECTION" (
   "COLLECTIONID" ASC
);

/*==============================================================*/
/* Index: "IX_MC_COLLECTIONKIND"                                */
/*==============================================================*/
CREATE INDEX "IX_MC_COLLECTIONKIND" ON "MYCOLLECTION" (
   "COLLECTIONKIND" ASC
);

/*==============================================================*/
/* Index: "IX_MCO_MYCATALOGID"                                  */
/*==============================================================*/
CREATE INDEX "IX_MCO_MYCATALOGID" ON "MYCOLLECTION" (
   "MYCATALOGID" ASC
);

/*==============================================================*/
/* Index: "IX_MCO_PATIENTNAME"                                  */
/*==============================================================*/
CREATE INDEX "IX_MCO_PATIENTNAME" ON "MYCOLLECTION" (
   "PATIENTNAME" ASC
);

/*==============================================================*/
/* Index: "IX_MCO_ICDCODE"                                      */
/*==============================================================*/
CREATE INDEX "IX_MCO_ICDCODE" ON "MYCOLLECTION" (
   "ICDCODE" ASC
);

/*==============================================================*/
/* Index: "IX_MCO_ACRCODE"                                      */
/*==============================================================*/
CREATE INDEX "IX_MCO_ACRCODE" ON "MYCOLLECTION" (
   "ACRCODE" ASC
);

/*==============================================================*/
/* Index: "IX_MCR_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_MCR_CUSTOMERGUID" ON "MYCREDIT" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MCC_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_MCC_CUSTOMERGUID" ON "MYCUSTOMERCIRCLE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MFM_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_MFM_CUSTOMERGUID" ON "MYFAMILYMEMBER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MFM_MYCUSTOMERGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_MFM_MYCUSTOMERGUID" ON "MYFAMILYMEMBER" (
   "MYCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MYFD_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_MYFD_CUSTOMERGUID" ON "MYFOCUSDOCTOR" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MYFE_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_MYFE_CUSTOMERGUID" ON "MYFOCUSEXPERT" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MYFP_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_MYFP_CUSTOMERGUID" ON "MYFOCUSPATIENT" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MYFTC_CUSTOMERGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_MYFTC_CUSTOMERGUID" ON "MYFOCUSTEACHCENTER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MHC_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_MHC_CUSTOMERGUID" ON "MYHEALTHCARD" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MSD_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_MSD_CUSTOMERGUID" ON "MYSERVICEDATE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MSDS_MYSDATEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_MSDS_MYSDATEID" ON "MYSERVICEDATESHEDULE" (
   "MYSERVICEDATEID" ASC
);

/*==============================================================*/
/* Index: "IX_MSTP_MYSDATEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_MSTP_MYSDATEID" ON "MYSERVICETIMEPART" (
   "MYSERVICEDATEID" ASC
);

/*==============================================================*/
/* Index: "IX_PDS_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_PDS_CUSTOMERGUID" ON "PATIENTDISKSPACE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_PVPT_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_PVPT_CUSTOMERGUID" ON "PATIENTVIDEOPHONETIME" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_PSR_INSTITUTIONGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_PSR_INSTITUTIONGUID" ON "PLATSIGNRECORD" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_PML_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_PML_CUSTOMERGUID" ON "PUBLICMEMBERLEVEL" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_QC_INSTITUTIONGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_QC_INSTITUTIONGUID" ON "QUALITYCENTER" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_QCH_QUALITYCENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_QCH_QUALITYCENTERID" ON "QUALITYCENTERHOSPITAL" (
   "QUALITYCENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_QCH_QUALITYGROUPID"                               */
/*==============================================================*/
CREATE INDEX "IX_QCH_QUALITYGROUPID" ON "QUALITYCENTERHOSPITAL" (
   "QUALITYGROUPID" ASC
);

/*==============================================================*/
/* Index: "IX_QDH_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_QDH_CUSTOMERGUID" ON "QUALITYDOCTORHOSPITAL" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_QG_QUALITYCENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_QG_QUALITYCENTERID" ON "QUALITYGROUP" (
   "QUALITYCENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_QGD_QUALITYCENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_QGD_QUALITYCENTERID" ON "QUALITYGROUPDOCTOR" (
   "QUALITYCENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_QGD_QUALITYGROUPID"                               */
/*==============================================================*/
CREATE INDEX "IX_QGD_QUALITYGROUPID" ON "QUALITYGROUPDOCTOR" (
   "QUALITYGROUPID" ASC
);

/*==============================================================*/
/* Index: "IX_QGD_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_QGD_CUSTOMERGUID" ON "QUALITYGROUPDOCTOR" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_RCM_CUSTOMERROLE_ID"                              */
/*==============================================================*/
CREATE INDEX "IX_RCM_CUSTOMERROLE_ID" ON "ROLE_CATEGORY_MAPPING" (
   "CUSTOMERROLE_ID" ASC
);

/*==============================================================*/
/* Index: "IX_RCM_CATEGORY"                                     */
/*==============================================================*/
CREATE INDEX "IX_RCM_CATEGORY" ON "ROLE_CATEGORY_MAPPING" (
   "CATEGORY" ASC
);

/*==============================================================*/
/* Index: "IX_SCENTER_IGUID"                                    */
/*==============================================================*/
CREATE INDEX "IX_SCENTER_IGUID" ON "SERVICECENTER" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SCENTER_KIND"                                     */
/*==============================================================*/
CREATE INDEX "IX_SCENTER_KIND" ON "SERVICECENTER" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_SCI_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_SCI_CUSTOMERGUID" ON "SERVICECENTERINVITATION" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SCI_ICUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_SCI_ICUSTOMERGUID" ON "SERVICECENTERINVITATION" (
   "INVITATIONCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SCMANAGER_CUSTOMERGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_SCMANAGER_CUSTOMERGUID" ON "SERVICECENTERMANAGER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SCMANAGER_SERVICECENTERID"                        */
/*==============================================================*/
CREATE INDEX "IX_SCMANAGER_SERVICECENTERID" ON "SERVICECENTERMANAGER" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_SCO_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_SCO_SERVICECENTERID" ON "SERVICECENTEROFFICE" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_SCP_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_SCP_SERVICECENTERID" ON "SERVICECENTERPIC" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_SCS_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_SCS_SERVICECENTERID" ON "SERVICECENTERSETUP" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_SCT_INSTITUTIONGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_SCT_INSTITUTIONGUID" ON "SERVICECENTERTOTAL" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SCT_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_SCT_SERVICECENTERID" ON "SERVICECENTERTOTAL" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_SD_INSTITUTIONGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_SD_INSTITUTIONGUID" ON "SERVICEDNS" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SOPEN_SERVICECENTERID"                            */
/*==============================================================*/
CREATE INDEX "IX_SOPEN_SERVICECENTERID" ON "SERVICEOPEN" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_ST_SHAREGUID"                                     */
/*==============================================================*/
CREATE INDEX "IX_ST_SHAREGUID" ON "SHARETARGET" (
   "SHAREGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ST_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_ST_CUSTOMERGUID" ON "SHARETARGET" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SSDS_INSTITUTIONGUID"                             */
/*==============================================================*/
CREATE INDEX "IX_SSDS_INSTITUTIONGUID" ON "STORESHAREDISKSPACE" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SUBBE_SUBSCRIBEGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_SUBBE_SUBSCRIBEGUID" ON "SUBSCRIBE" (
   "SUBSCRIBEGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SUBBE_SUBSCRIBECONTENT"                           */
/*==============================================================*/
CREATE INDEX "IX_SUBBE_SUBSCRIBECONTENT" ON "SUBSCRIBE" (
   "SUBSCRIBECONTENT" ASC
);

/*==============================================================*/
/* Index: "IX_SUBBE_SUBSCRIBECYCLE"                             */
/*==============================================================*/
CREATE INDEX "IX_SUBBE_SUBSCRIBECYCLE" ON "SUBSCRIBE" (
   "SUBSCRIBECYCLE" ASC
);

/*==============================================================*/
/* Index: "IX_SUBBE_INSTITUTIONGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_SUBBE_INSTITUTIONGUID" ON "SUBSCRIBE" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SUBBE_CUSTOMERGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_SUBBE_CUSTOMERGUID" ON "SUBSCRIBE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SUBBE_STATE"                                      */
/*==============================================================*/
CREATE INDEX "IX_SUBBE_STATE" ON "SUBSCRIBE" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_TCMANAGER_CUSTOMERGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_TCMANAGER_CUSTOMERGUID" ON "TEACHCENTERMANAGER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_TCMANAGER_TEACHCENTERID"                          */
/*==============================================================*/
CREATE INDEX "IX_TCMANAGER_TEACHCENTERID" ON "TEACHCENTERMANAGER" (
   "TEACHCENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_TMASTER_CUSTOMERGUID"                             */
/*==============================================================*/
CREATE INDEX "IX_TMASTER_CUSTOMERGUID" ON "TEACHMASTER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_TMASTER_INSTITUTIONGUID"                          */
/*==============================================================*/
CREATE INDEX "IX_TMASTER_INSTITUTIONGUID" ON "TEACHMASTER" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_UQS_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_UQS_CUSTOMERGUID" ON "USERQUERYSET" (
   "CUSTOMERGUID" ASC
);

