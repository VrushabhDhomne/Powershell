Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServer
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CommonHttpFeatures
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpErrors
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpRedirect
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationDevelopment

Enable-WindowsOptionalFeature -online -FeatureName NetFx4Extended-ASPNET45
Enable-WindowsOptionalFeature -Online -FeatureName IIS-NetFxExtensibility45
Enable-WindowsOptionalFeature -Online -FeatureName IIS-NetFxExtensibility

Enable-WindowsOptionalFeature -Online -FeatureName IIS-HealthAndDiagnostics
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpLogging
Enable-WindowsOptionalFeature -Online -FeatureName IIS-LoggingLibraries
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestMonitor
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpTracing
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Security
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestFiltering
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Performance
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerManagementTools
Enable-WindowsOptionalFeature -Online -FeatureName IIS-IIS6ManagementCompatibility
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Metabase
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ManagementConsole
Enable-WindowsOptionalFeature -Online -FeatureName IIS-BasicAuthentication
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WindowsAuthentication
Enable-WindowsOptionalFeature -Online -FeatureName IIS-StaticContent
Enable-WindowsOptionalFeature -Online -FeatureName IIS-DefaultDocument
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebSockets
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationInit
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIExtensions
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIFilter
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionStatic
Enable-WindowsOptionalFeature -Online -FeatureName IIS-IIS-URLAuthorization
Enable-WindowsOptionalFeature -Online -FeatureName IIS-URLAuthorization
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ManagementService
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WMICompatibility
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ServerSideIncludes
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CGI
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASP
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebDAV
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HostableWebCore
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ManagementScriptingTools
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionDynamic
Enable-WindowsOptionalFeature -Online -FeatureName IIS-IPSecurity
Enable-WindowsOptionalFeature -Online -FeatureName IIS-IISCertificateMappingAuthentication
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Web-Asp-Net

Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45

Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45 -All
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIExtensions
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIFilter
Enable-WindowsOptionalFeature -online -FeatureName NetFx4Extended-ASPNET45