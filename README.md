# FarCry plugin for the Hoth Exception Reporting framework.

Hoth was created by Aaron Greenlee
http://aarongreenlee.com/share/hoth-coldfusion-errors-tracking-reporting

FarCry plugin created by Sean Coyne (http://www.n42designs.com)

## License

This work is licensed under a Creative Commons Attribution-Share-Alike 3.0 Unported License (http://creativecommons.org/licenses/by-sa/3.0/)

## Requirements

* ColdFusion 9 or Railo 3.2 (Hoth uses cfscript CFCs and other CF9 functionality, not sure about the Railo requirement, but this has been tested on Railo 3.2 and ColdFusion 9.0.1)
* FarCry 6.0.9 or higher

## Changelog

__08/31/2011:__ Move config setup to the config's process method. When FarCry core bug [FC-2538](https://farcry.jira.com/browse/FC-2538) is fixed, this will remove the need for the second update app when you initially install and configure Hoth.  For now, the only time we can reinitialize Hoth is on app startup and so, the second update app is still required (and will be required whenever you modify the Hoth configuration).

__06/27/2011:__ Moved Hoth to a git submodule.  To pull down a copy of Hoth when cloning, after the clone is complete run "git submodule init" then "git submodule update".

__04/06/2011:__ Updated Hoth to latest version from GitHub.  Allows configuration of the logFileIsRelative setting.  If set to false, you can specify a path a full path to the log file directory.  Be sure to update your FarCry config!

__03/11/2011:__ Updated Hoth to latest version from GitHub.  Plugin now uses Hoth's built in reporting UI rather than a custom version.  This should allow for less maintenance as Hoth is updated going forward.

__02/17/2011:__ Initial version.  This was created using the initial release of Hoth.  Aaron plans to make some updates to the reporting features which may break the functionality here so use caution if you manually upgrade the copy of Hoth included with the plugin.

## Installation

### Using Git

1. From your /farcry/plugins directory clone from github by executing:

        git clone git://github.com/seancoyne/farcryhoth.git

2. Change directories to the farcryhoth directory

        cd farcryhoth
        
3. Pull down the Hoth submodule by executing the following (these commands will pull down Hoth to the /farcry/plugins/farcryhoth/packages/custom/hoth directory):

        git submodule init
        git submodule update 

### Using Zip or Tarball Downlaod

1. If you downloaded the zip or tarball, __you will need a copy of Hoth__ which you can find at https://github.com/aarongreenlee/Hoth.
2. Extract the plugin archive file to __/farcry/plugins/farcryhoth__
3. Extract the __Hoth__ archive to __/farcry/plugins/farcryhoth/packages/custom/hoth__

### Continuing installation...

1. Add __farcryhoth__ to the list of plugins in your farcry constructor
2. Create a webserver mapping so that __/farcryhoth__ maps to the __/farcry/plugins/farcryhoth/www directory__ (or copy the www directory to a "farcryhoth" directory under your project's www directory).

        Alias /farcryhoth "/Users/username/Sites/farcry/plugins/farcryhoth/www"

3. __Copy the following code__ to your farcryConstructor.cfm anywhere after `<cfset this.mappings = structnew() />` (note the capital "H" in Hoth for case-sensitive file systems): 

        <cfset this.mappings["/Hoth"] = expandPath("/farcry/plugins/farcryhoth/packages/custom/hoth") />
       
4. __Copy the following code__ to your onError method of your Application.cfc just before the cfreturn (you may need to change the name of your exception argument):	

        <cfif structKeyExists(application,"hoth")>
            <cfset application.hoth.hoth.track(arguments.exception) />
        </cfif>

5. Perform an updateapp on your FarCry site, then log into the webtop and go to Admin --> Edit Config and edit the "Hoth: ColdFusion Exception Tracking" configuration.
6. Perform another updateapp and you will be done. Note: This second update app is required due to a bug in FarCry core ([FC-2538](https://farcry.jira.com/browse/FC-2538)).  It will also require an update app any time you modify the Hoth configuration.