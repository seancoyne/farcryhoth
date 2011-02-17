<cfsetting enablecfoutputonly="true" />

<cftry>
	
	<cfset application.hoth = {
		config = createObject("component","Hoth.object.HothConfig")
	} />
	
	<cfset application.hoth.config.setApplicationName(application.applicationName) />
	<cfset application.hoth.config.setTimeToLock(application.fapi.getConfig(key = "hoth", name = "timeToLock", default = 1)) />
	<cfset application.hoth.config.setLogPath(application.fapi.getConfig(key = "hoth", name = "logPath", default = "/Hoth/logs")) />
	<cfset application.hoth.config.setEmailNewExceptions(application.fapi.getConfig(key = "hoth", name = "EmailNewExceptions", default = false)) />
	<cfset application.hoth.config.setEmailNewExceptionsTo(application.fapi.getConfig(key = "hoth", name = "EmailNewExceptionsTo", default = "")) />
	<cfset application.hoth.config.setEmailNewExceptionsFrom(application.fapi.getConfig(key = "hoth", name = "EmailNewExceptionsFrom", default = "")) />
	<cfset application.hoth.config.setEmailNewExceptionsFile(application.fapi.getConfig(key = "hoth", name = "EmailNewExceptionsFile", default = false)) />
	
	<cfset application.hoth.hoth = createObject("component","Hoth.HothTracker").init(HothConfig = application.hoth.config) />
	<!--- use our copy of HothReporter so we load our report HTML --->
	<cfset application.hoth.report = createObject("component","farcry.plugins.farcryhoth.packages.custom.HothReporter").init(HothConfig = application.hoth.config) />
		
	<cfcatch>
	
		<!--- hoth could not be initialized (this is most likely to occur when the plugin is first deployed, or if the mapping is not added to the farcryConstructor.cfm) --->
		
	</cfcatch>
	
</cftry>

<cfsetting enablecfoutputonly="false" />