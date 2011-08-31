<cfcomponent output="false" key="hoth" displayname="Hoth: ColdFusion Exception Tracking" hint="Manages configuration for the Hoth exception tracking framework" extends="farcry.core.packages.forms.forms">
	
	<cfproperty ftSeq="110" ftFieldset="Hoth Configuration" ftLabel="Time to Lock" name="timeToLock" type="integer" ftType="integer" required="true" ftValidation="required" default="1" ftDefault="1" ftHint="How many seconds should we lock file operations?" />
	<cfproperty ftSeq="120" ftFieldset="Hoth Configuration" ftLabel="Log Path" name="logPath" type="nstring" ftType="string" required="true" ftValidation="required" default="/Hoth/logs" ftDefault="/Hoth/logs" ftHint="Where would you like Hoth to save exception data? This folder should be empty." />
	<cfproperty ftSeq="125" ftFieldset="Hoth Configuration" ftLabel="Log Path is relative?" name="logPathIsRelative" type="boolean" ftType="boolean" required="true" default="1" ftDefault="1" ftHint="Is the log file location relative to the webroot?" />
	<cfproperty ftSeq="130" ftFieldset="Hoth Configuration" ftLabel="Email New Exceptions?" name="EmailNewExceptions" type="boolean" ftType="boolean" required="true" default="0" ftDefault="0" ftHint="Would you like new exceptions to be emailed to you?" />
	<cfproperty ftSeq="140" ftFieldset="Hoth Configuration" ftLabel="To Address(es)" name="EmailNewExceptionsTo" type="nstring" ftType="string" required="false" default="" ftDefault="" ftHint="What address(es) should receive these e-mails?" />
	<cfproperty ftSeq="150" ftFieldset="Hoth Configuration" ftLabel="From Address" name="EmailNewExceptionsFrom" type="nstring" ftType="string" required="false" default="" ftDefault="" ftHint="What address would you like these emails sent from?" />
	<cfproperty ftSeq="160" ftFieldset="Hoth Configuration" ftLabel="Include JSON in Email?" name="EmailNewExceptionsFile" type="boolean" ftType="boolean" required="true" default="0" ftDefault="0" ftHint="Would you like the raw JSON attached to the e-mail?" />
	
	<cffunction name="process" access="public" output="true" returntype="struct" hint="Creates the Hoth objects based on submitted data">
		<cfargument name="fields" type="struct" required="true" hint="The fields submitted" />
			
		<cfparam name="arguments.fields.timeToLock" default="1" />
		<cfparam name="arguments.fields.logPath" default="/Hoth/logs" />
		<cfparam name="arguments.fields.logPathIsRelative" default="1" />
		<cfparam name="arguments.fields.emailNewExceptions" default="0" />
		<cfparam name="arguments.fields.emailNewExceptionsTo" default="" />
		<cfparam name="arguments.fields.emailNewExceptionsFrom" default="" />
		<cfparam name="arguments.fields.emailNewExceptionsFile" default="0" />
		
		<cfset application.hoth = { config = createObject("component","Hoth.config.HothConfig") } />
		
		<cfset application.hoth.config.setApplicationName(application.applicationName) />
		<cfset application.hoth.config.setTimeToLock(arguments.fields.timeToLock) />
		<cfset application.hoth.config.setLogPath(arguments.fields.logPath) />
		<cfset application.hoth.config.setLogPathIsRelative(arguments.fields.logPathIsRelative) />
		<cfset application.hoth.config.setEmailNewExceptions(arguments.fields.emailNewExceptions) />
		<cfset application.hoth.config.setEmailNewExceptionsTo(arguments.fields.emailNewExceptionsTo) />
		<cfset application.hoth.config.setEmailNewExceptionsFrom(arguments.fields.emailNewExceptionsFrom) />
		<cfset application.hoth.config.setEmailNewExceptionsFile(arguments.fields.emailNewExceptionsFile) />
		<cfset application.hoth.config.setHothReportURL("http://#cgi.server_name#:#cgi.server_port#/farcryhoth/facade/reporting.cfc") />
		
		<cfset application.hoth.hoth = createObject("component","Hoth.HothTracker").init(HothConfig = application.hoth.config) />
		<cfset application.hoth.report = createObject("component","Hoth.HothReporter").init(HothConfig = application.hoth.config) />
			
		<cfreturn arguments.fields />
	
	</cffunction>
	
</cfcomponent>