
#define MyAppName "Test_App"
#define MyAppVersion "1.1"
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
Source: "{#MyAppExeName}"; DestDir: "{app}"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{#MyAppName}"; Flags: nowait postinstall

