CALL Z:\data-integration\pan.bat /file="Z:\Educational-Data-and-Account-Generation-Engine\modules\teacher-dashboard\td_enrollments-export.ktr" 
C:
cd C:\Program Files (x86)\
CALL .\curl.exe -F "passkey=xxxxxxxxx" -F "uploadFile=@Z:\Educational-Data-and-Account-Generation-Engine\modules\teacher-dashboard\export\td_enrollments.csv" http://td-setup.appspot.com/tukwila.wednet.edu/csvupload