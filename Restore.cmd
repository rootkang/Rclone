REM thanhtranserver@gmail.com 
@ECHO OFF
TITLE Rclone-Backup
REM Set var
SET RCLONE_LOG_FILE_PATH="%~dp0restore_log.log"
START rclone.exe "%~dp0rclone.exe"
REM Processing.....
START rclone --transfers=32 --checkers=16 --drive-chunk-size=16384k --stats-unit bits --transfers 10 --verbose --drive-upload-cutoff=16384k --log-file "%~dp0restore_log.log" copy gdrive:\DATA D:\restore -P 
REM Save log
	FOR 

		@ECHO %date%;%time%;%stats%A;end>> %RCLONE_LOG_FILE_PATH%
PAUSE
REM Done!

