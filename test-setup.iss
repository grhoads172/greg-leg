; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Cat Test App"
#define MyAppVersion "1.0"
#define MyAppExeName "the_tester.exe"

[Setup]
; Application Information
AppName={#MyAppName}
AppVersion={#MyAppVersion}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=C:\Users\rhoadg\Document\GitHub\greg-leg
OutputBaseFilename=the-tester-app

[Files]
Source: "C:\Users\rhoadg\Documents\GitHub\greg-leg\Tests\the_tester\bin\Release\net6.0-windows\{#MyAppExeName}"; DestDir: "{app}"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{#MyAppName}"; Flags: nowait postinstall

