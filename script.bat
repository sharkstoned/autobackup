SET @bakName=""
SET @keysName=""
SET @destFolder=""
SET @finalDir=%DATE%.%TIME:~0,2%.%TIME:~3,2%

START /wait cmd.exe /k "cd /d %programfiles%\zcash4win\app & zcash-cli.exe backupwallet %@bakName% & zcash-cli.exe z_exportwallet %@keysName% & exit"

IF NOT EXIST %@destFolder% mkdir %@destFolder%
mkdir %@destFolder%\%@finalDir%
copy %userprofile%\%@bakName% %@destFolder%\%@finalDir%
copy %userprofile%\%@keysName% %@destFolder%\%@finalDir%

exit