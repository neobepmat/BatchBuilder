SET OVERLORD_DIR=Z:\GIT\OVERLORD
SET OVERLORD_CONFIGURATORE=Z:\GIT\ConfiguratoreOverlord
SET VB6PROG="C:\Program Files\Microsoft Visual Studio\VB98\VB6.EXE"
SET OUTDIR=D:\FTCONTROLSMANAGER\

SET OVERLORD_FILENAME=%OUTDIR%\FTCONTROLSMANAGER.EXE
SET OVERLORDCONFIGURATORE_FILENAME=%OUTDIR%\FTCONTROLSMANAGERCONFIGURATOR.EXE

SET OUT_ERRORLOG_OVERLORD="Z:\GIT\FT10-Setup-Sourcetree\batch\VB6MAKE_ERRORLOG_OVERLORD.TXT"
SET OUT_ERRORLOG_OVERLORDCONFIGURATORE="Z:\GIT\FT10-Setup-Sourcetree\batch\VB6MAKE_ERRORLOG_CONFIGURATORE.TXT"

SET STAMPVER_DIR=Z:\GIT\FT10-Setup-Sourcetree\batch\STAMPVER.EXE

%VB6PROG% /make "%OVERLORD_DIR%\FTControlsManager.vbp" /out %OUT_ERRORLOG_OVERLORD% /outdir %OUTDIR% 

"%STAMPVER_DIR%" -f"10.4.0.0" %OVERLORD_FILENAME%

%VB6PROG% /make "%OVERLORD_CONFIGURATORE%\FTControlsManagerConfigurator.vbp" /out %OUT_ERRORLOG_OVERLORDCONFIGURATORE% /outdir %OUTDIR% 

"%STAMPVER_DIR%" -f"10.4.0.0" %OVERLORDCONFIGURATORE_FILENAME%