@ECHO OFF
TITLE Rclone-Sync
REM Var
SET RCLONE_LOG_FILE_PATH="%~dp0backup.log"
START rclone.exe "%~dp0rclone.exe"
REM Processing.....
START rclone --transfers=32 --checkers=16 --drive-chunk-size=16384k --stats-unit bits --transfers 10 --verbose --drive-upload-cutoff=16384k --log-file "%~dp0backup.log" copy D:\backup gdrive:\DATA -P 
REM Create log
	FOR 

		@ECHO %date%;%time%;%stats%A;end>> %RCLONE_LOG_FILE_PATH%
PAUSE

