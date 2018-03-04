chcp 1251
set chapter=0
:1
set /A chapter=chapter+1
md chapter%chapter%
if not %chapter%==27 goto 1
del: newfolders.bat