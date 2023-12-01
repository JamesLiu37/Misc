del /f /q *

copy %USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\* .

ren * *.jpg

explorer.exe .