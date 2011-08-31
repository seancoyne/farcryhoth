<cfsetting enablecfoutputonly="true" />

<cftry>
	
	<cfset oFarConfig = application.fapi.getContentType("farConfig") />
	<cfset oHothConfig = application.fapi.getContentType("configHoth") />
	<cfset oHothConfig.process(fields = oFarConfig.getConfig( key = "hoth")) />
	
	<cfcatch>
	
		<!--- hoth could not be initialized (this is most likely to occur if the mapping is not added to the farcryConstructor.cfm) --->
		
	</cfcatch>
	
</cftry>

<cfsetting enablecfoutputonly="false" />