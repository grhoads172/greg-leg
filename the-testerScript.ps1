$directPath = "C:\Users\rhoadg\Documents\GitHub\greg-leg"
$mainExecutable = "C:\Users\rhoadg\Documents\GitHub\greg-leg\Tests\the_tester\bin\Release\net6.0-windows\the_tester.exe"
$version = "1.0"

&"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\Users\rhoadg\Documents\GitHub\greg-leg\Tests\Tests.sln" /property:Configuration=Release /p:Version=$version


&"C:\Program Files (x86)\Inno Setup 6\ISCC.exe" "C:\Users\rhoadg\Documents\GitHub\greg-leg\test-setup.iss"

if (Test-Path "C:\Temp\Projects\the_tester\Installer\$version") {
    Write-Host "Folder Exists - Not Creating it"
}
else
{
    New-Item -Path "C:\Temp\Projects\the_tester\Installer\$version" -ItemType directory
}

Copy-Item "C:\Users\rhoadg\Documents\GitHub\greg-leg\the_tester.exe" -Destination "C:\Temp\Projects\the_tester\Installer\$version\the_tester.exe"

