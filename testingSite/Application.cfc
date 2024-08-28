<!---<cfcomponent>
<!---Dynamically calculate the the dir path of this application. Use that path as the Application Scope name.--->
<!--- <cfset AppName = listLast(GetDirectoryFromPath(GetCurrentTemplatePath()),'\')> --->
<cfset this.name="BelairAutoService">
<!---Application Scope is set. Length of Application Scope and Session Scope timeout is set here. --->
<cfset this.sessionmanagement = "True">
<cfset this.applicationTimeout = "#createtimespan(0,1,0,0)#">
<cfset this.sessiontimeout = "#createtimespan(0,0,30,0)#">
<cfset this.currRootDirectory = GetDirectoryFromPath(GetCurrentTemplatePath())>

<cfset this.setClientCookies = "False">
<cffunction name="onApplicationStart">

</cffunction>
<cffunction name="onRequestStart">

</cffunction>
</cfcomponent>--->
<cfcomponent>
<!---Dynamically calculate the the dir path of this application. Use that path as the Application Scope name.--->
<!--- <cfset AppName = listLast(GetDirectoryFromPath(GetCurrentTemplatePath()),'\')> --->
<cfset this.name="BelairAutoService">
<!---Application Scope is set. Length of Application Scope and Session Scope timeout is set here. --->
<cfset this.sessionmanagement = "True">
<cfset this.applicationTimeout = "#createtimespan(0,1,0,0)#">
<cfset this.sessiontimeout = "#createtimespan(0,0,30,0)#">
<cfset this.currRootDirectory = GetDirectoryFromPath(GetCurrentTemplatePath())>

<cfset this.setClientCookies = "True">
<cffunction name="onApplicationStart" returntype="boolean">
        <!-- Determine if the environment is local or production -->
        <cfif FindNoCase("127.0.0.1", cgi.server_name)>
            <cfset application.baseURL = "http://127.0.0.1:8500/belairautoservice_08_09_2024/wwwroot/">
        <cfelse>
            <cfset application.baseURL = "https://www.belairautoservice.biz/testingsite/">
        </cfif>
        <cfset application.imagesPath = application.baseURL & "images/">
        <cfset application.jsPath = application.baseURL & "js/">
        <cfset application.cssPath = application.baseURL & "css/">
         <!-- Log the base URL -->
        <cflog file="application" text="Application baseURL set to #application.baseURL#">
        <cfreturn true>
</cffunction>

<cffunction name="onRequestStart">

</cffunction>
</cfcomponent>
