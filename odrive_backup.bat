python %HOMEPATH%/.odrive-agent/bin/odrive.py status --backups > temp.txt


setlocal
for /f "usebackq delims=" %%A in (`findstr "ID: " temp.txt`) do set HOGE=%%A
python %HOMEPATH%/.odrive-agent/bin/odrive.py removebackup %HOGE:ID: =%

python %HOMEPATH%/.odrive-agent/bin/odrive.py backup "F:/Macro/f_nk_out/zip-as-png-py/upload/" "/Amazon Drive/Pictures/"
pause