
#define MyAppName "Test_App"
#define MyAppVersion "1.1"
#define MyAppExeName "the_tester.exe"

[Setup]
; Application Information
AppName={#MyAppName}
AppVersion={#MyAppVersion}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir= Installer\{#MyAppVersion}
OutputBaseFilename=the-tester-app

[Files]
Source: "Tests\the_tester\bin\Release\net6.0-windows\{#MyAppExeName}"; DestDir: "{app}"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{#MyAppName}"; Flags: nowait postinstall

