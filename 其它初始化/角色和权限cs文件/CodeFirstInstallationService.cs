using eWorld.Core;
using eWorld.Core.Common;
using eWorld.Core.Configuration;
using eWorld.Core.Data;
using eWorld.Entity.Domain.Common.Configuration;
using eWorld.Entity.Domain.Common.NopCommerce.Catalog;
using eWorld.Entity.Domain.Common.NopCommerce.Localization;
using eWorld.Entity.Domain.Common.NopCommerce.Logging;
using eWorld.Entity.Domain.Common.NopCommerce.Messages;
using eWorld.Entity.Domain.Common.NopCommerce.Seo;
using eWorld.Entity.Domain.Common.NopCommerce.Settings;
using eWorld.Entity.Domain.Common.NopCommerce.Tasks;
using eWorld.Entity.Domain.Common.NopCommerce.WebSites;
using eWorld.Entity.Domain.CRM;
using eWorld.Core.Infrastructure;
using eWorld.Core.IO;
using eWorld.Data;
using eWorld.Services.Common.Configuration;
using eWorld.Services.CRM.Customers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using eWorld.Entity.Configuration;

namespace eWorld.Services.Common.Install
{
    public class CodeFirstInstallationService : IInstallationService
    {
        #region Fields

        public ICommonRepository<WebSite> _WebSiteRepository;
        public ICommonRepository<Language> _languageRepository;
        public ICRMRepository<Customer> _customerRepository;
        public ICRMRepository<CustomerRole> _customerRoleRepository;
        public ICommonRepository<UrlRecord> _urlRecordRepository;
        public ICommonRepository<EmailAccount> _emailAccountRepository;
        public ICommonRepository<MessageTemplate> _messageTemplateRepository;
        public ICommonRepository<ScheduleTask> _scheduleTaskRepository;
        public IWebHelper _webHelper;
        public IInstallExcuteSqlFileService _installExcuteSqlFileService;
        public ICommonRepository<Column> _columnRepository;
        public ICommonRepository<ContinuingEducation> _continuingEducationRepository;

        #endregion

        #region Ctor

        public CodeFirstInstallationService(
            IWebHelper webHelper)
        {
            this._webHelper = webHelper;
        }

        #endregion

        #region Utilities

        protected virtual void InitCommonParameter()
        {
            this._WebSiteRepository = EngineContext.Current.ContainerManager.Resolve<ICommonRepository<WebSite>>();
            this._languageRepository = EngineContext.Current.ContainerManager.Resolve<ICommonRepository<Language>>();
            this._urlRecordRepository = EngineContext.Current.ContainerManager.Resolve<ICommonRepository<UrlRecord>>();

            this._emailAccountRepository = EngineContext.Current.ContainerManager.Resolve<ICommonRepository<EmailAccount>>();
            this._messageTemplateRepository = EngineContext.Current.ContainerManager.Resolve<ICommonRepository<MessageTemplate>>();
            this._scheduleTaskRepository = EngineContext.Current.ContainerManager.Resolve<ICommonRepository<ScheduleTask>>();

            this._installExcuteSqlFileService = EngineContext.Current.ContainerManager.Resolve<IInstallExcuteSqlFileService>();
            this._columnRepository = EngineContext.Current.ContainerManager.Resolve<ICommonRepository<Column>>();
            this._continuingEducationRepository = EngineContext.Current.ContainerManager.Resolve<ICommonRepository<ContinuingEducation>>();
        }
        protected virtual void InitCRMParameter()
        {
            this._customerRepository = EngineContext.Current.ContainerManager.Resolve<ICRMRepository<Customer>>();
            this._customerRoleRepository = EngineContext.Current.ContainerManager.Resolve<ICRMRepository<CustomerRole>>();
        }
        protected virtual void InstallWebSite()
        {
            var WebSiteUrl = _webHelper.GetWebSiteLocation(false);
            var WebSites = new List<WebSite>()
            {
                new WebSite()
                {
                    Name = "Your WebSite name",
                    Url = WebSiteUrl,
                    SslEnabled = false,
                    Hosts = "yourWebSite.com,www.yourWebSite.com",
                    DisplayOrder = 1,
                },
            };

            WebSites.ForEach(x => _WebSiteRepository.Insert(x));
        }
        protected virtual void InstallLanguages()
        {
            var language = new Language
            {
                Name = "Chinese",
                LanguageCulture = "zh-CN",
                UniqueSeoCode = "zh",
                FlagImageFileName = "us.png",
                Published = true,
                DisplayOrder = 1
            };
            _languageRepository.Insert(language);
        }
        protected virtual void InstallLocaleResources()
        {
            //'English' language
            //var language = _languageRepository.Table.Single(l => l.Name == "Chinese");

            ////save resources
            //foreach (var filePath in System.IO.Directory.EnumerateFiles(_webHelper.MapPath("~/App_Data/Localization/"), "*.nopres.xml", SearchOption.TopDirectoryOnly))
            //{
            //    var localesXml = File.ReadAllText(filePath);
            //    var localizationService = EngineContext.Current.Resolve<ILocalizationService>();
            //    localizationService.ImportResourcesFromXml(language, localesXml);
            //}
        }
        protected virtual void InstallCustomersAndUsers(string defaultUserEmail, string defaultUserPassword)
        {
            //系统管理员
            var crAdministrators = new CustomerRole
            {
                Name = "系统管理员",
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.Administrators,
            };
            //Registered
            var crRegistered = new CustomerRole
            {
                Name = "Registered",
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.Registered,
            };
            //Guests
            var crGuests = new CustomerRole
            {
                Name = "Guests",
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.Guests,
            };
            //医生
            var crDoctor = new CustomerRole
            {
                Name = SystemCustomerRoleNames.Doctor,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.Doctor,
            };
            //医护人员
            var crMedicalStaff = new CustomerRole
            {
                Name = SystemCustomerRoleNames.MedicalStaff,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.MedicalStaff,
            };
            //药剂师
            var crPharmacists = new CustomerRole
            {
                Name = SystemCustomerRoleNames.Pharmacists,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.Pharmacists,
            };
            //公众用户
            var crPatient = new CustomerRole
            {
                Name = SystemCustomerRoleNames.Patient,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.Patient,
            };
            //讲师
            var crTeacher = new CustomerRole
            {
                Name = SystemCustomerRoleNames.Teacher,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.Teacher,
            };
            //学员
            var crStudent = new CustomerRole
            {
                Name = SystemCustomerRoleNames.Student,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.Student,
            };
            //教学管理员
            var crTeachCenterManager = new CustomerRole
            {
                Name = SystemCustomerRoleNames.TeachCenterManager,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.TeachCenterManager,
            };
            //继教负责人
            var crContinueTeachManager = new CustomerRole
            {
                Name = SystemCustomerRoleNames.ContinueTeachManager,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.ContinueTeachManager,
            };
            //运营团队管理者
            var crPlatManagerLeader = new CustomerRole
            {
                Name = SystemCustomerRoleNames.PlatManagerLeader,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.PlatManagerLeader,
            };
            //运营管理人员
            var crPlatManager = new CustomerRole
            {
                Name = SystemCustomerRoleNames.PlatManager,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.PlatManager,
            };
            //运营服务人员
            var crPlatService = new CustomerRole
            {
                Name = SystemCustomerRoleNames.PlatService,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.PlatService,
            };
            //服务质量监督人员
            var crServiceQualityMonitor = new CustomerRole
            {
                Name = SystemCustomerRoleNames.ServiceQualityMonitor,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.ServiceQualityMonitor,
            };
            //客服人员
            var crPlatCustomerService = new CustomerRole
            {
                Name = SystemCustomerRoleNames.PlatCustomerService,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.PlatCustomerService,
            };
            //机构管理员
            var crInstitutionManager = new CustomerRole
            {
                Name = SystemCustomerRoleNames.InstitutionManager,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.InstitutionManager,
            };
            //服务中心运维人员
            var crServiceCenterOperator = new CustomerRole
            {
                Name = SystemCustomerRoleNames.ServiceCenterOperator,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.ServiceCenterOperator,
            };
            //服务中心导诊人员
            var crServiceCenterGuide = new CustomerRole
            {
                Name = SystemCustomerRoleNames.ServiceCenterGuide,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.ServiceCenterGuide,
            };
            //服务中心助理
            var crServiceCenterAssistant = new CustomerRole
            {
                Name = SystemCustomerRoleNames.ServiceCenterAssistant,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.ServiceCenterAssistant,
            };
            //服务中心记录员
            var crServiceCenterRecordMan = new CustomerRole
            {
                Name = SystemCustomerRoleNames.ServiceCenterRecordMan,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.ServiceCenterRecordMan,
            };
            //影像云主管领导
            var crCloudLeader = new CustomerRole
            {
                Name = SystemCustomerRoleNames.CloudLeader,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.CloudLeader,
            };
            //影像云分管领导
            var crCloudChargeLeader = new CustomerRole
            {
                Name = SystemCustomerRoleNames.CloudChargeLeader,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.CloudChargeLeader,
            };
            //行政领导
            var crOfficialLeader = new CustomerRole
            {
                Name = SystemCustomerRoleNames.OfficialLeader,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.OfficialLeader,
            };
            //机构领导
            var crInstitutionLeader = new CustomerRole
            {
                Name = SystemCustomerRoleNames.InstitutionLeader,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.InstitutionLeader,
            };
            //质控人员
            var crQualityPerson = new CustomerRole
            {
                Name = SystemCustomerRoleNames.QualityPerson,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.QualityPerson,
            };
            //质控管理人员
            var crQualityManager = new CustomerRole
            {
                Name = SystemCustomerRoleNames.QualityManager,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.QualityManager,
            };
            //质控联系人
            var crQualityTarget = new CustomerRole
            {
                Name = SystemCustomerRoleNames.QualityTarget,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.QualityTarget,
            };

            //转诊管理员
            var crReferralManager = new CustomerRole
            {
                Name = SystemCustomerRoleNames.ReferralManager,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.ReferralManager,
            };

            //随访管理员
            var crFollowUpManager = new CustomerRole
            {
                Name = SystemCustomerRoleNames.FollowUpManager,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.FollowUpManager,
            };

            //监控管理员
            var crMonitorManager = new CustomerRole
            {
                Name = SystemCustomerRoleNames.MonitorManager,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.MonitorManager,
            };

            //监控维护人员
            var crMonitorMaintainMan = new CustomerRole
            {
                Name = SystemCustomerRoleNames.MonitorMaintainMan,
                Active = true,
                IsSystemRole = true,
                SystemName = SystemCustomerRoleNames.MonitorMaintainMan,
            };

            var customerRoles = new List<CustomerRole>
                                {
                                    crAdministrators,
                                    crRegistered,
                                    crGuests,
                                    crDoctor,
                                    crMedicalStaff,
                                    crPharmacists,
                                    crPatient,
                                    crTeacher,
                                    crStudent,
                                    crTeachCenterManager,
                                    crContinueTeachManager,
                                    crPlatManagerLeader,
                                    crPlatManager,
                                    crPlatService,
                                    crServiceQualityMonitor,
                                    crPlatCustomerService,
                                    crInstitutionManager,
                                    crServiceCenterOperator,
                                    crServiceCenterGuide,
                                    crServiceCenterAssistant,
                                    crServiceCenterRecordMan,
                                    crCloudLeader,
                                    crCloudChargeLeader,
                                    crOfficialLeader,
                                    crInstitutionLeader,
                                    crQualityPerson,
                                    crQualityManager,
                                    crQualityTarget,
                                    crReferralManager,
                                    crFollowUpManager,
                                    crMonitorManager,
                                    crMonitorMaintainMan
                                };
            customerRoles.ForEach(cr => _customerRoleRepository.Insert(cr));


            //admin user
            var adminUser = new Customer()
            {
                CustomerGuid = Guid.NewGuid(),
                Email = defaultUserEmail,
                UserId = "Admin",
                Password = defaultUserPassword,
                PasswordFormat = PasswordFormat.Clear,
                PasswordSalt = "",
                Active = true,
                IsSystemAccount = true,
                CreatedOnUtc = DateTime.UtcNow,
                LastActivityDateUtc = DateTime.UtcNow,
            };
            adminUser.CustomerRoles.Add(crAdministrators);
            adminUser.CustomerRoles.Add(crRegistered);
            _customerRepository.Insert(adminUser);

            var customer = new Customer()
            {
                UserId = "Guest",
                CustomerGuid = Guid.NewGuid(),
                Active = true,
                CreatedOnUtc = DateTime.UtcNow,
                IsSystemAccount = true,
                LastActivityDateUtc = DateTime.UtcNow,
            };
            _customerRepository.Insert(customer);
        }
        protected virtual void HashDefaultCustomerPassword(string defaultUserEmail, string defaultUserPassword)
        {
            var customerRegistrationService = EngineContext.Current.Resolve<ICustomerRegistrationService>();
            customerRegistrationService.ChangePassword(new ChangePasswordRequest(defaultUserEmail, false,
                 PasswordFormat.Hashed, defaultUserPassword));
        }
        protected virtual void InstallEmailAccounts()
        {
            var emailAccounts = new List<EmailAccount>
                               {
                                   new EmailAccount
                                       {
                                           Email = "test@mail.com",
                                           DisplayName = "WebSite name",
                                           Host = "smtp.mail.com",
                                           Port = 25,
                                           Username = "123",
                                           Password = "123",
                                           EnableSsl = false,
                                           UseDefaultCredentials = false
                                       },
                               };
            emailAccounts.ForEach(ea => _emailAccountRepository.Insert(ea));

        }
        protected virtual void InstallMessageTemplates()
        {
            var eaGeneral = _emailAccountRepository.Table.FirstOrDefault();
            if (eaGeneral == null)
                throw new Exception("Default email account cannot be loaded");
            var messageTemplates = new List<MessageTemplate>
                               {
                                   new MessageTemplate
                                       {
                                           Name = "Customer.EmailValidationMessage",
                                           Subject = "%WebSite.Name%. Email validation",
                                           Body = "<a href=\"%WebSite.URL%\">%WebSite.Name%</a>  <br />  <br />  To activate your account <a href=\"%Customer.AccountActivationURL%\">click here</a>.     <br />  <br />  %WebSite.Name%",
                                           IsActive = true,
                                           EmailAccountId = eaGeneral.Id,
                                       },
                                 
                                   new MessageTemplate
                                       {
                                           Name = "Customer.PasswordRecovery",
                                           Subject = "%WebSite.Name%. Password recovery",
                                           Body = "<a href=\"%WebSite.URL%\">%WebSite.Name%</a>  <br />  <br />  To change your password <a href=\"%Customer.PasswordRecoveryURL%\">click here</a>.     <br />  <br />  %WebSite.Name%",
                                           IsActive = true,
                                           EmailAccountId = eaGeneral.Id,
                                       },
                                   new MessageTemplate
                                       {
                                           Name = "Customer.WelcomeMessage",
                                           Subject = "Welcome to %WebSite.Name%",
                                           Body = "We welcome you to <a href=\"%WebSite.URL%\"> %WebSite.Name%</a>.<br /><br />You can now take part in the various services we have to offer you. Some of these services include:<br /><br />Permanent Cart - Any products added to your online cart remain there until you remove them, or check them out.<br />Address Book - We can now deliver your products to another address other than yours! This is perfect to send birthday gifts direct to the birthday-person themselves.<br />Order History - View your history of purchases that you have made with us.<br />Products Reviews - Share your opinions on products with our other customers.<br /><br />For help with any of our online services, please email the WebSite-owner: <a href=\"mailto:%WebSite.Email%\">%WebSite.Email%</a>.<br /><br />Note: This email address was provided on our registration page. If you own the email and did not register on our site, please send an email to <a href=\"mailto:%WebSite.Email%\">%WebSite.Email%</a>.",
                                           IsActive = true,
                                           EmailAccountId = eaGeneral.Id,
                                       },
                                   new MessageTemplate
                                       {
                                           Name = "NewCustomer.Notification",
                                           Subject = "%WebSite.Name%. New customer registration",
                                           Body = "<p><a href=\"%WebSite.URL%\">%WebSite.Name%</a> <br /><br />A new customer registered with your WebSite. Below are the customer's details:<br />Full name: %Customer.FullName%<br />Email: %Customer.Email%</p>",
                                           IsActive = true,
                                           EmailAccountId = eaGeneral.Id,
                                       },
                                   new MessageTemplate
                                       {
                                           Name = "NewVATSubmitted.WebSiteOwnerNotification",
                                           Subject = "%WebSite.Name%. New VAT number is submitted.",
                                           Body = "<p><a href=\"%WebSite.URL%\">%WebSite.Name%</a> <br /><br />%Customer.FullName% (%Customer.Email%) has just submitted a new VAT number. Details are below:<br />VAT number: %Customer.VatNumber%<br />VAT number status: %Customer.VatNumberStatus%<br />Received name: %VatValidationResult.Name%<br />Received address: %VatValidationResult.Address%</p>",
                                           IsActive = true,
                                           EmailAccountId = eaGeneral.Id,
                                       },
                                   new MessageTemplate
                                       {
                                           Name = "OrderCancelled.CustomerNotification",
                                           Subject = "%WebSite.Name%. Your order cancelled",
                                           Body = "<p><a href=\"%WebSite.URL%\">%WebSite.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Your order has been cancelled. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a target=\"_blank\" href=\"%Order.OrderURLForCustomer%\">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>",
                                           IsActive = true,
                                           EmailAccountId = eaGeneral.Id,
                                       },
                                   new MessageTemplate
                                       {
                                           Name = "Service.EmailAFriend",
                                           Subject = "%WebSite.Name%. Referred Item",
                                           Body = "<p><a href=\"%WebSite.URL%\"> %WebSite.Name%</a> <br /><br />%EmailAFriend.Email% was shopping on %WebSite.Name% and wanted to share the following item with you. <br /><br /><b><a target=\"_blank\" href=\"%Product.ProductURLForCustomer%\">%Product.Name%</a></b> <br />%Product.ShortDescription% <br /><br />For more info click <a target=\"_blank\" href=\"%Product.ProductURLForCustomer%\">here</a> <br /><br /><br />%EmailAFriend.PersonalMessage%<br /><br />%WebSite.Name%</p>",
                                           IsActive = true,
                                           EmailAccountId = eaGeneral.Id,
                                       },
                               };
            messageTemplates.ForEach(mt => _messageTemplateRepository.Insert(mt));

        }


        protected virtual void InstallSettings()
        {
            var settingService = EngineContext.Current.Resolve<ISettingService>();

            settingService.SaveSetting(new CommonSettings()
            {
                UseStoredProceduresIfSupported = true,
                SitemapEnabled = true,
                SitemapIncludeCategories = true,
                DisplayJavaScriptDisabledWarning = false,
                Log404Errors = true,
                BreadcrumbDelimiter = "/",
                RenderXuaCompatible = false,
                XuaCompatibleValue = "IE=edge"
            });

            settingService.SaveSetting(new SmsSettings()
            {
                SMSEnable = "true",
                UserId = "",
                Pwd = "",
                SMSUrl = "",
                SMSCashUrl = "",
                SMSExt = ""
            });

            settingService.SaveSetting(new MeetCommonSettings()
            {
                GenseeAdmin = "",
                GenseePassword = "",
                GenseeMeetingSite = "",
                GenseeMeetingUrl = "http://",
                GenseeWebServiceUrl = "http://",
                EnabledTraining = false,
                GenseeAdminSaas = "",
                GenseeMeetingSiteSaas = "",
                GenseeMeetingUrlSaas = "",
                GenseePasswordSaas = "",
            });

            settingService.SaveSetting(new WeChatSettings()
            {
                IsEnableWeiXin = true,
                WeiXinAppID = "",
                WeiXinAppSecret = "",
            });

            settingService.SaveSetting(new SeoSettings()
            {
                PageTitleSeparator = ". ",
                DefaultTitle = "Your WebSite",
                DefaultMetaKeywords = "",
                DefaultMetaDescription = "",
                ConvertNonWesternChars = false,
                AllowUnicodeCharsInUrls = true,
                EnableJsBundling = true,
                EnableCssBundling = false,
                CanonicalUrlsEnabled = false,
                WwwRequirement = WwwRequirement.NoMatter,
                ReservedUrlRecordSlugs = new List<string>()
                    {
                        "admin", 
                        "install", 
                        "authorization",
                        "login", 
                        "register", 
                        "logout", 
                        "passwordrecovery", 
                        "inboxupdate",
                        "sentupdate", 
                        "search",
                        "config", 
                        "eucookielawaccept", 
                        "page-not-found"
                    },
            });

            settingService.SaveSetting(new AdminAreaSettings()
            {
                GridPageSize = 15
            });

            settingService.SaveSetting(new CatalogSettings()
            {
                DefaultViewMode = "grid",
                CategoryBreadcrumbEnabled = true,
                IgnoreAcl = false,
                DefaultCategoryPageSizeOptions = "8, 4, 12",
                TopCategoryMenuSubcategoryLevelsToDisplay = 1,
            });

            settingService.SaveSetting(new LocalizationSettings()
            {
                DefaultAdminLanguageId = _languageRepository.Table.Single(l => l.Name == "Chinese").Id,
                UseImagesForLanguageSelection = false,
                SeoFriendlyUrlsForLanguagesEnabled = false,
                AutomaticallyDetectLanguage = false,
                LoadAllLocaleRecordsOnStartup = true,
                LoadAllLocalizedPropertiesOnStartup = true,
                LoadAllUrlRecordsOnStartup = false,
                IgnoreRtlPropertyForAdminArea = false,
            });

            settingService.SaveSetting(new CustomerSettings()
            {
                UsernamesEnabled = true,
                CheckUsernameAvailabilityEnabled = false,
                AllowUsersToChangeUsernames = false,
                DefaultPasswordFormat = PasswordFormat.Hashed,
                HashedPasswordFormat = "SHA1",
                PasswordMinLength = 6,
                UserRegistrationType = UserRegistrationType.Standard,
                AllowCustomersToUploadAvatars = false,
                AvatarMaximumSizeBytes = 20000,
                DefaultAvatarEnabled = true,
                ShowCustomersLocation = false,
                ShowCustomersJoinDate = false,
                AllowViewingProfiles = false,
                NotifyNewCustomerRegistration = false,
                CustomerNameFormat = CustomerNameFormat.ShowFirstName,
                OnlineCustomerMinutes = 20,
                SuffixDeletedCustomers = false,
            });


            settingService.SaveSetting(new MediaSettings()
            {
                AvatarPictureSize = 85,
                CategoryThumbPictureSize = 125,
                AutoCompleteSearchThumbPictureSize = 20,
                MaximumImageSize = 1280,
                DefaultPictureZoomEnabled = false,
                DefaultImageQuality = 100,
                MultipleThumbDirectories = false
            });

            settingService.SaveSetting(new ExternalAuthenticationSettings()
            {
                AutoRegisterEnabled = false,
            });

            settingService.SaveSetting(new SecuritySettings()
            {
                ForceSslForAllPages = false,
                EncryptionKey = CommonHelper.GenerateRandomDigitCode(16),
                AdminAreaAllowedIpAddresses = null,
            });

            settingService.SaveSetting(new FileSystemSettings()
            {
            });

            settingService.SaveSetting(new DateTimeSettings()
            {
                AllowCustomersToSetTimeZone = false
            });

            settingService.SaveSetting(new PlatInfoSettings()
            {
                PlatName = "影像云平台",
                ServiceCenterName = "服务中心",
                CenterName = "中心",
                EnableMobile = false,
                //DocumentPath="D://document",
                //HttpPath="http://",
                //IntegratedBrowserUrl="http:sfas"
                OplatKey = "tomtaw",
                ThirdKey = "thirdgrantkey",
                VirtualPath = "files",
                IsMustUseGoogleChrome = false,
            });

            settingService.SaveSetting(new SysparaSettings()
            {
                IsDisplayDispatchFailure = true,
                IsAllowRequestConsult = true,
                IsAllowInputHospitalName = true,
                DefaultHospitalArea = "杭州市",
                IsAllowAuditWhenRegisterDoctor = true,
                IsShowClinicInfo = false,
                ConsultLimit = false,
                IsDirectlyLogin = true,
                IsInputIdNumber = true,
                IsDisplayMemberHospital = true,
                IsAllowCancelUnDispatchConsult = false,
                ConsultIsFirstTeach = false,
                ConsultWhetherCharges = true,
                IsEnableVerificationCode = true,
                IsSendSms = true,
                OnlyRegistMember = false,
                MemberRegistMustEnterCertificate = true,
                MemberRegistMustEnterIdNumber = true,
                IsOpenVideoManagerAuditFunction = true,
                ArticleIsFrontAudit = false,
                EnabledClinicCard = false,
                EnabledConsultCard = false,
                IsDisplayIndexModule = true,
                EnabledRegistSimpleMode = false,
                EnabledRemoteCareCard = false,
                IsAllowRequestRemoteClinc = true,
                IsAllowRequestAllCentersCloudDiagnosis = true,
                RemoteClincLimit = false,
                //RemoteCareLimit = false,
                CloudDiagnosisLimit = false,
                IsDisplayPlatTeach = true,
                BaiduAK = "",
                IsEnableTeachVodMapping = false,
                TeachVodMappingRule = "",
                ReleaseClinicResourcesTime = "30",
                IsEnabledConsultDataAudit = false,
                IsEnableAuditDiagnosisReply = false,
                MedSummaryIsStructure = false,
                MedicalIsDistinctSightAndDiagnosis = false,
                ExamIsLimitStudentType = false,
                MeetingIsEnableExpertMode = false,
                IsAutoJoinMeetingWhenClinicCall = false,
                DoctorCanAdvanceJoinMeetingWhenRequestClinic = false
            });

            var eaGeneral = _emailAccountRepository.Table.FirstOrDefault();
            if (eaGeneral == null)
                throw new Exception("Default email account cannot be loaded");
            settingService.SaveSetting(new EmailAccountSettings()
            {
                DefaultEmailAccountId = eaGeneral.Id
            });


        }



        protected virtual void InstallCategories(bool install)
        {
            //pictures
            //var pictureService = EngineContext.Current.Resolve<IPictureService>();
            //var sampleImagesPath = _webHelper.MapPath("~/content/samples/");

            //_installExcuteSqlFileService.InstallData(install);//初始化数据库数据

            //categories
            //var allCategories = new List<Category>();

            ////search engine names
            //foreach (var category in allCategories)
            //{
            //    _urlRecordRepository.Insert(new UrlRecord()
            //    {
            //        EntityId = category.Id,
            //        EntityName = "Category",
            //        LanguageId = 0,
            //        IsActive = true,
            //        Slug = category.ValidateSeName("", category.Name, true)
            //    });
            //}
        }

        protected virtual void InstallScheduleTasks()
        {
            var tasks = new List<ScheduleTask>()
            {
                new ScheduleTask()
                {
                    Name = "发送邮件",
                    Seconds = 60,
                    Type = "eWorld.Services.Messages.QueuedMessagesSendTask, eWorld.Services",
                    Enabled = true,
                    StopOnError = false,
                },
                new ScheduleTask()
                {
                    Name = "保持活跃",
                    Seconds = 300,
                    Type = "eWorld.Services.Common.KeepAliveTask, eWorld.Services",
                    Enabled = true,
                    StopOnError = false,
                },
                new ScheduleTask()
                {
                    Name = "删除游客",
                    Seconds = 600,
                    Type = "eWorld.Services.Customers.DeleteGuestsTask, eWorld.Services",
                    Enabled = true,
                    StopOnError = false,
                },
                new ScheduleTask()
                {
                    Name = "清除缓存",
                    Seconds = 600,
                    Type = "eWorld.Services.Caching.ClearCacheTask, eWorld.Services",
                    Enabled = false,
                    StopOnError = false,
                },
                new ScheduleTask()
                {
                    Name = "清除日志",
                    //60 minutes
                    Seconds = 3600,
                    Type = "eWorld.Services.Logging.ClearLogTask, eWorld.Services",
                    Enabled = false,
                    StopOnError = false,
                },
                new ScheduleTask()
                {
                    Name = "订阅消息短信群发",
                    Seconds = 600,
                    Type = "eWorld.Admin.APPClass.TimerSendSms,eWorld.Admin",
                    Enabled = true,
                    StopOnError = false,
                },
                new ScheduleTask()
                {
                    Name = "获取微信交互数据",
                    Seconds = 7000,
                    Type = "eWorld.WeChat.AccessTokenTask,eWorld.WeChat",
                    Enabled = true,
                    StopOnError = false
                },
                new ScheduleTask()
                {
                    Name = "发送微信消息",
                    Seconds = 100,
                    Type = "eWorld.Admin.APPClass.TimerSendWeChat,eWorld.Admin",
                    Enabled = true,
                    StopOnError = false
                },
                new ScheduleTask()
                {
                    Name = "远程门诊资源释放",
                    Seconds = 1800,
                    Type = "eWorld.Admin.APPClass.TimerCancleClincRquest,eWorld.Admin",
                    Enabled = true,
                    StopOnError = false,
                }
            };

            tasks.ForEach(x => _scheduleTaskRepository.Insert(x));
        }

        protected virtual void InstallColumn()
        {
            var columns = new List<Column>()
            {
                new Column()
                {
                    Name="首页",
                    Kind=(Convert.ToInt16(PageShowType.模块)).ToString(),
                    ServiceId=0,ServiceName="平台首页",
                    SectionCode=(Convert.ToInt16(Section.平台)).ToString(),
                    Order=1,
                    SysId = Convert.ToInt16(SystemColumn.首页),
                    IsSystem=true,
                    IsDisplay = true
                },
                new Column()
                {
                    Name="服务中心",
                    Kind=(Convert.ToInt16(PageShowType.模块)).ToString(),
                    ServiceId=0,ServiceName="平台首页",
                    SectionCode=(Convert.ToInt16(Section.平台)).ToString(),
                    Order=2,
                    SysId = Convert.ToInt16(SystemColumn.服务中心),
                    IsSystem=true,
                    IsDisplay = true
                },
                new Column()
                {
                    Name="远程会诊",
                    Kind=(Convert.ToInt16(PageShowType.模块)).ToString(),
                    ServiceId=0,ServiceName="平台首页",
                    SectionCode=(Convert.ToInt16(Section.平台)).ToString(),
                    Order=3,
                    SysId=Convert.ToInt16(SystemColumn.会诊),
                    IsSystem=true,
                    IsDisplay = true
                },
                new Column()
                {
                    Name="远程门诊",
                    Kind=(Convert.ToInt16(PageShowType.模块)).ToString(),
                    ServiceId=0,ServiceName="平台首页",
                    SectionCode=(Convert.ToInt16(Section.平台)).ToString(),
                    Order=4,
                    SysId=Convert.ToInt16(SystemColumn.远程门诊),
                    IsSystem=true,
                    IsDisplay = true
                },
                new Column()
                {
                    Name="通知公告",
                    Kind=(Convert.ToInt16(PageShowType.模块)).ToString(),
                    ServiceId=0,ServiceName="平台首页",
                    SectionCode=(Convert.ToInt16(Section.平台)).ToString(),
                    Order=7,
                    SysId = Convert.ToInt16(SystemColumn.通知公告),
                    IsSystem=true,
                    IsDisplay = true
                },
                new Column()
                {
                    Name="下载",
                    Kind=(Convert.ToInt16(PageShowType.模块)).ToString(),
                    ServiceId=0,ServiceName="平台首页",
                    SectionCode=(Convert.ToInt16(Section.平台)).ToString(),
                    Order=8,
                    SysId = Convert.ToInt16(SystemColumn.下载),
                    IsSystem=true,
                    IsDisplay = true
                },
                new Column()
                {
                    Name="平台介绍",
                    Kind= (Convert.ToInt16(PageShowType.单独文章)).ToString(),
                    ServiceId=0,ServiceName="平台首页",
                    SectionCode=(Convert.ToInt16(Section.平台)).ToString(),
                    Order=9,
                    SysId = Convert.ToInt16(SystemColumn.平台介绍),
                    IsSystem=true,
                    IsDisplay = true
                }
            };

            columns.ForEach(x => _columnRepository.Insert(x));
        }

        protected virtual void InstallContinuingEducation()
        {
            var Educations = new List<ContinuingEducation>() { 
                new ContinuingEducation()
                {
                    ConEduCode = "00",
                    ConEduName = "非继教项目",
                    ConEduLevel = 0,
                    Credits = 0,
                    TeachCredits = 0
                },
                new ContinuingEducation()
                {
                    ConEduCode = "01",
                    ConEduName = "市级继教项目",
                    ConEduLevel = 3,
                    Credits = 1,
                    TeachCredits = 0
                },
                new ContinuingEducation()
                {
                    ConEduCode = "02",
                    ConEduName = "院内学习项目",
                    ConEduLevel = 2,
                    Credits = 0.5,
                    TeachCredits = 0
                },
                new ContinuingEducation()
                {
                    ConEduCode = "03",
                    ConEduName = "科室学习项目",
                    ConEduLevel = 1,
                    Credits = 0.2,
                    TeachCredits = 0
                }
            };

            Educations.ForEach(s => { _continuingEducationRepository.Insert(s); });
        }

        #endregion

        #region Methods

        public void CommonData(bool installSampleData = true)
        {
            InitCommonParameter();

            InstallWebSite();
            InstallLanguages();
            InstallEmailAccounts();
            InstallMessageTemplates();
            InstallSettings();
            InstallLocaleResources();
            InstallScheduleTasks();
            InstallColumn();
            InstallContinuingEducation();
            InstallCategories(installSampleData);
        }
        public void CustomerData(string defaultUserEmail,
            string defaultUserPassword)
        {
            InitCRMParameter();
            InstallCustomersAndUsers(defaultUserEmail, defaultUserPassword);
            HashDefaultCustomerPassword(defaultUserEmail, defaultUserPassword);
        }
        #endregion
    }
    public class DateTimeSettings : ISettings
    {
        /// <summary>
        /// Gets or sets a default store time zone identifier
        /// </summary>
        public string DefaultWebSiteTimeZoneId { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether customers are allowed to select theirs time zone
        /// </summary>
        public bool AllowCustomersToSetTimeZone { get; set; }
    }
}
