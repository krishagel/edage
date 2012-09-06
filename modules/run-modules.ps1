<#

.SYNOPSIS
	Run all of the nightly export modules 
.DESCRIPTION
	File launching Kettle data conversions that will perform all necessary exports and conversions for seperate systems.
.NOTES
	File Name	:	run-modules.ps1
	Author		:	Kris Hagel - kris@krishagel.com
	Date		:	September 5, 2012
.LINK
	https://github.com/krishagel/Educational-Data-and-Account-Generation-Engine
	
#>

# run Lexia file creation and push
Z:\data-integration\Kitchen.bat /file:"Z:\Educational-Data-and-Account-Generation-Engine\modules\lexia\Lexia_Job.kjb" :level=debug > Z:\logs\lexia.log

# **TEMP** run google apps export file creation
Z:\data-integration\Kitchen.bat /file:"Z:\Educational-Data-and-Account-Generation-Engine\modules\google-apps-directory-sync\Google_Job.kjb" :level=debug > Z:\logs\google-apps-file-creation.log
