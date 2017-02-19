SET DEVEXPRESS_FOLDER=C:\Program Files\DevExpress 15.2\Components\Bin\Framework
SET DEPENDENCIES_FOLDER=Z:\GIT\FT10-Setup-Sourcetree\dependencies

XCOPY /S /I "%DEVEXPRESS_FOLDER%\de" "%DEPENDENCIES_FOLDER%\de" /Y
XCOPY /S /I "%DEVEXPRESS_FOLDER%\ru" "%DEPENDENCIES_FOLDER%\ru" /Y
XCOPY /S /I "%DEVEXPRESS_FOLDER%\ja" "%DEPENDENCIES_FOLDER%\ja" /Y
XCOPY /S /I "%DEVEXPRESS_FOLDER%\es" "%DEPENDENCIES_FOLDER%\es" /Y

copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.Data.v15.2.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.Images.v15.2.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.Office.v15.2.Core.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.Printing.v15.2.Core.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.RichEdit.v15.2.Core.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.Sparkline.v15.2.Core.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.Utils.v15.2.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.XtraBars.v15.2.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.XtraEditors.v15.2.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.XtraGrid.v15.2.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.XtraLayout.v15.2.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.XtraPrinting.v15.2.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.XtraTreeList.v15.2.dll" "%DEPENDENCIES_FOLDER%"

copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.XtraGauges.v15.2.Core.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.XtraGauges.v15.2.Win.dll" "%DEPENDENCIES_FOLDER%"

copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.Utils.v15.2.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.Utils.v15.2.UI.dll" "%DEPENDENCIES_FOLDER%"

copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.Diagram.v15.2.Core.dll" "%DEPENDENCIES_FOLDER%"
copy "C:\Program Files\DevExpress 15.2\Components\Bin\Framework\DevExpress.XtraDiagram.v15.2.dll" "%DEPENDENCIES_FOLDER%"

copy "epplus.dll" "%DEPENDENCIES_FOLDER%"
copy "ftd2xx" "%DEPENDENCIES_FOLDER%"
copy "ftdadapter.dll" "%DEPENDENCIES_FOLDER%"
copy "ftdxskins.dll" "%DEPENDENCIES_FOLDER%"
copy "FTSystem.Translations.dll" "%DEPENDENCIES_FOLDER%"
copy "log4net.dll" "%DEPENDENCIES_FOLDER%"
copy "Microsoft.Win32.TaskScheduler.dll" "%DEPENDENCIES_FOLDER%"
copy "Modbus.dll" "%DEPENDENCIES_FOLDER%"
copy "ObjectDumper.dll" "%DEPENDENCIES_FOLDER%"
copy "SmartPcsDll.dll" "%DEPENDENCIES_FOLDER%"
copy "System.ComponentModel.Composition.CodePlex.dll" "%DEPENDENCIES_FOLDER%"
copy "System.ComponentModel.Composition.Registration.CodePlex.dll" "%DEPENDENCIES_FOLDER%"
copy "System.ComponentModel.Composition.Web.Mvc.CodePlex.dll" "%DEPENDENCIES_FOLDER%"
copy "System.Reflection.Context.CodePlex.dll" "%DEPENDENCIES_FOLDER%"
copy "Unme.Common.dll" "%DEPENDENCIES_FOLDER%"
copy "Modbus.Extensions.dll" "%DEPENDENCIES_FOLDER%"
copy "BridgeSmartPcs.dll" "%DEPENDENCIES_FOLDER%"
copy "nlog.dll" "%DEPENDENCIES_FOLDER%"
copy "Microsoft.VisualStudio.QualityTools.UnitTestFramework.dll" "%DEPENDENCIES_FOLDER%"
