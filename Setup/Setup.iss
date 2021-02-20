; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Smart Design Plugin"
#define MyAppVersion "2020.1"
#define MyAppExeName "MyProg.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{9FEBB1A1-FA3A-4018-B453-761EC4741662}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
CreateAppDir=no
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Setup
OutputBaseFilename=Smart Design Plugin
SetupIconFile=E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Setup\hnet.com-image.ico
UninstallDisplayIcon=E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Setup\hnet.com-image.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMdotNet__DataAPI.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Newtonsoft.Json.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Newtonsoft.Json.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RestSharp.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RestSharp.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.Rest.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.Rest.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Costura.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Costura.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RevitAPIIFC.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\IntfIFCAPI.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RevitAPIIFC.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Smart Design Plug-in Updates.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Smart Design Plug-in Updates.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\WpfApp1.exe"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\WpfApp1.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\LoginWindow.exe"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\LoginWindow.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\SmartImageForm_v1.exe"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\SmartImageForm_v1.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\LoginWindow.exe.config"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\WpfApp1.exe.config"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\SmartImageForm_v1.exe.config"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMdotNet__DataAPI.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates.addin"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2018"; Flags: ignoreversion


Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMdotNet__DataAPI.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Newtonsoft.Json.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Newtonsoft.Json.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RestSharp.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RestSharp.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.Rest.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.Rest.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Costura.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Costura.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RevitAPIIFC.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\IntfIFCAPI.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RevitAPIIFC.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Smart Design Plug-in Updates.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Smart Design Plug-in Updates.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\WpfApp1.exe"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\WpfApp1.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\LoginWindow.exe"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\LoginWindow.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\SmartImageForm_v1.exe"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\SmartImageForm_v1.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\LoginWindow.exe.config"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\WpfApp1.exe.config"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\SmartImageForm_v1.exe.config"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMdotNet__DataAPI.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates.addin"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2019"; Flags: ignoreversion

Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMdotNet__DataAPI.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Newtonsoft.Json.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Newtonsoft.Json.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RestSharp.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RestSharp.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.Rest.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.Rest.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Costura.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Costura.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RevitAPIIFC.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\IntfIFCAPI.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RevitAPIIFC.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Smart Design Plug-in Updates.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Smart Design Plug-in Updates.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\WpfApp1.exe"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\WpfApp1.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\LoginWindow.exe"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\LoginWindow.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\SmartImageForm_v1.exe"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\SmartImageForm_v1.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\LoginWindow.exe.config"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\WpfApp1.exe.config"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\SmartImageForm_v1.exe.config"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMdotNet__DataAPI.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates.addin"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2020"; Flags: ignoreversion

Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMdotNet__DataAPI.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Newtonsoft.Json.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Newtonsoft.Json.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RestSharp.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RestSharp.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.Rest.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.Rest.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMData.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Costura.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Costura.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RevitAPIIFC.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\IntfIFCAPI.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\RevitAPIIFC.xml"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Smart Design Plug-in Updates.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\Smart Design Plug-in Updates.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\WpfApp1.exe"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\WpfApp1.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\LoginWindow.exe"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\LoginWindow.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\SmartImageForm_v1.exe"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\SmartImageForm_v1.pdb"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\LoginWindow.exe.config"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\WpfApp1.exe.config"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\SmartImageForm_v1.exe.config"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\bin\Debug\FMdotNet__DataAPI.dll"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
Source: "E:\Work\Companies\Upwork\02-Smart Design Plug-in Updates (12.8$-hr)\Work\01\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates\Smart Design Plug-in Updates.addin"; DestDir: "{userappdata}\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

