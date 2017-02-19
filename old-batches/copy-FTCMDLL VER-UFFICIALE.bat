SET FTCM_VERSIONE=10.4.000
SET TDK_VERSIONE=10.4.000
SET RFID_VERSIONE=1.3.0
SET FTCM_SYS_FOLDER=C:\WINDOWS\SYSTEM32\FTCM
SET FTCM_EXE_SOURCE_FOLDER=D:\FTCONTROLSMANAGER

SET FTCM_TEMPLATE_INI_FOLDER=Z:\GIT\FT10-SETUP-SOURCETREE\TEMPLATE-INI-FTCONTROLMANAGER
SET FTCM_EXE_DESTINATION_FOLDER=Z:\GIT\FT10-Setup-Sourcetree\Exe\%FTCM_VERSIONE%
SET TDK_DESTINATION_FOLDER=Z:\GIT\FT10-Setup-Sourcetree\TheDarkKnight\%TDK_VERSIONE%
SET RFID_DESTINATION_FOLDER=Z:\GIT\FT10-Setup-Sourcetree\Rfid\%RFID_VERSIONE%

CALL copy-FTCMDLL.bat %FTCM_SYS_FOLDER%, %TDK_DESTINATION_FOLDER%, %RFID_DESTINATION_FOLDER%, %FTCM_EXE_SOURCE_FOLDER%, %FTCM_EXE_DESTINATION_FOLDER%, %FTCM_TEMPLATE_INI_FOLDER%, %FTCM_VERSIONE%