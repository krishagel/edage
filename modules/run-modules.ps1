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
	https://github.com/krishagel/edage
	
#>

# run Lexia file creation and push
Z:\data-integration\Kitchen.bat /file:"Z:\Educational-Data-and-Account-Generation-Engine\modules\lexia\Lexia_Job.kjb" :level=debug > Z:\logs\lexia.log

# run Dibels file creation and push
Z:\data-integration\Kitchen.bat /file:"Z:\Educational-Data-and-Account-Generation-Engine\modules\dibels\dibels_job.kjb" :level=debug > Z:\logs\dibels.log

# run Wellnet file creation and push
Z:\data-integration\Kitchen.bat /file:"Z:\Educational-Data-and-Account-Generation-Engine\modules\wellnet\wellnet_Job.kjb" :level=debug > Z:\logs\wellnet.log

# run DatatDirector file creation and push
Z:\data-integration\Kitchen.bat /file:"Z:\Educational-Data-and-Account-Generation-Engine\modules\data-director\data-director-job.kjb" :level=debug > Z:\logs\data-director.log

# run google apps export file creation
Z:\data-integration\Kitchen.bat /file:"Z:\Educational-Data-and-Account-Generation-Engine\modules\google-apps-directory-sync\Google_Job.kjb" :level=debug > Z:\logs\google-apps-file-creation.log

# run Teacher Dashboard file creation and push
Z:\Educational-Data-and-Account-Generation-Engine\modules\teacher-dashboard\td-enrollments-nightly.bat