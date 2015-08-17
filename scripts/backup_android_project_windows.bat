REM robocopy documentation: http://technet.microsoft.com/en-us/library/cc733145%28WS.10%29.aspx

SET SRC_PATH="X:\path1\PROJECT.git"
SET DEST_PATH="Y:\path2\PROJECT.git"

robocopy %SRC_PATH% %DEST_PATH% /e /mir /purge /nfl /ndl /dcopy:T /xf *.class *.dex *.apk /xd %SRC_PATH%\as_proj\<ANDROID_PROJECT_NAME>\app\build

rename %DEST_PATH% "<PROJECT>.git_%DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%"

pause
