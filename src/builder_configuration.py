import os, shlex, subprocess, re, datetime

class BuilderConfiguration:
	def __init__(self):
		# --------------------------------------------------------------------------------------
		# parametri globali
		# --------------------------------------------------------------------------------------
		self.DoOfficial = True
		self.RootSourceSetup = "Z:\\GIT\\FT10-Setup-Sourcetree\\"
		self.OfficialExePath = self.RootSourceSetup + "\\Exe"
		self.NonOfficialExePath = self.RootSourceSetup + "\\Exe_non_ufficiali"
		self.OfficialTdkPath = self.RootSourceSetup + "\\TheDarkKnight"
		self.NonOfficialTdkPath = self.RootSourceSetup + "\\TheDarkKnight_non_ufficiali"
		self.FTCMSystemPath = "C:\\WINDOWS\\SYSTEM32\\FTCM"

		# --------------------------------------------------------------------------------------
		# configurazione per build FTControlsManager
		# --------------------------------------------------------------------------------------
		self.projPathFTCM = 'Z:\\GIT\\OVERLORD\\FTControlsManager.vbp'
		self.logPathWithNameFTCM = '.\\FTControlsManager-build.log'

		self.projPathCONFIG = 'Z:\\GIT\\CONFIGURATOREOVERLORD\\FTControlsManagerConfigurator.vbp'
		self.logPathWithNameCONFIG = '.\\FTControlsManagerConfiguratore-build.log'

		self.outputPathFTCM = 'd:\\ftcontrolsmanager'
		self.outputPathCONFIG = self.outputPathFTCM

		self.newVersionFTCM = '10.4.0.0'
		self.newVersionCONFIG = self.newVersionFTCM

		self.ftcm_exe = self.outputPathFTCM + '\\FTControlsManager.exe'
		self.ftcmConfiguratore_exe = self.outputPathCONFIG + '\\FTControlsManagerConfigurator.exe'

		self.vb6Path = r'C:\Program Files\Microsoft Visual Studio\VB98\VB6.EXE'

		self.Overlord_DoBuild = False
		self.Configuratore_DoBuild = False
		
		self.DoOfficialVersion = False
		
		# --------------------------------------------------------------------------------------

		# --------------------------------------------------------------------------------------
		# configurazione MSBUILD
		# --------------------------------------------------------------------------------------
		self.msbuildPath = r'C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe'
		# --------------------------------------------------------------------------------------

		# --------------------------------------------------------------------------------------
		# configurazione per TDK
		# --------------------------------------------------------------------------------------
		self.projPathTDK = 'Z:\\GIT\\TheDarkKnight\\FTSystem.ControlsManager.sln'
		self.logPathWithNameTDK = '.\\TheDarkKnight-build.log'
		self.outputPathTDK = 'C:\\WINDOWS\\SYSTEM32\\FTCM\\'
		self.newVersionTDK = '10.4.0.0'
		self.msbuildPath = r'C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe'
		self.TDK_DoBuildDesign = False
		self.TDK_DoBuild = False
		self.TDK_PerformClean = True
		self.TDK_PerformBuild = True
		self.TDK_DoDebug = False
		# --------------------------------------------------------------------------------------

		# --------------------------------------------------------------------------------------
		# configurazione per TDKDeviceDriver
		# --------------------------------------------------------------------------------------
		self.projPathTDKDeviceDriver = 'Z:\\GIT\\TheDarkKnightDeviceDriver\\'
		self.logPathWithNameTDKDeviceDriver = '.\\TheDarkKnightDeviceDriver-build.log'
		self.outputPathTDKDeviceDriver = 'C:\\WINDOWS\\SYSTEM32\\FTCM\\'
		self.newVersionTDKDeviceDriver = '10.4.0.0'
		self.TDKDeviceDriver_DoBuild = True
		self.TDKDeviceDriver_PerformClean = True
		self.TDKDeviceDriver_PerformBuild = True
		self.TDKDeviceDriver_DoDebug = False
		# --------------------------------------------------------------------------------------

		# --------------------------------------------------------------------------------------
		# configurazione per SETUP OVERLORD-TDK
		# --------------------------------------------------------------------------------------
		self.projPathTDKSetup = 'Z:\\GIT\\TheDarkKnight\\FTSystem.ControlsManager.sln\\'
		self.logPathWithNameTDKSetup = '.\\TheDarkKnight-build.log'
		self.outputPathTDKSetup = 'C:\\WINDOWS\\SYSTEM32\\FTCM\\'
		self.newVersionTDKSetup = '10.4.0.0'
		self.TDKSetup_DoBuild = True
		self.TDKSetup_PerformClean = True
		self.TDKSetup_PerformBuild = True
		self.TDKSetup_Configuration= 'Release'
		self.TDKSetup_Platform='x86'
		# --------------------------------------------------------------------------------------

		# --------------------------------------------------------------------------------------
		# configurazione per SETUP OVERLORD-TDK-DEVICE DRIVER
		# --------------------------------------------------------------------------------------
		self.projPathTDKSetupDeviceDriver = 'Z:\\GIT\\\\TheDarkKnightDeviceDriver.sln\\'
		self.logPathWithNameTDKSetupDeviceDriver = '.\\TheDarkKnightDeviceDriver-build.log'
		self.outputPathTDKSetupDeviceDriver = 'C:\\WINDOWS\\SYSTEM32\\FTCM\\'
		self.newVersionTDKSetupDeviceDriver = '10.4.0.0'
		self.TDKSetupDeviceDriver_DoBuild = True
		self.TDKSetupDeviceDriver_PerformClean = True
		self.TDKSetupDeviceDriver_PerformBuild = True
		# --------------------------------------------------------------------------------------