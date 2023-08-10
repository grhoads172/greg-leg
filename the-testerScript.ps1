Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
$directPath = "C:/Users/rhoadg/Documents/GitHub/greg-leg"
$mainExecutable = "$directPath/Tests/the_tester/bin/Release/net6.0-windows/the_tester.exe"
$version = "1.0"

&"C:/Program Files/Microsoft Visual Studio/2022/Enterprise/MSBuild/Current/Bin/MSBuild.exe" "$directPath/Tests/the_tester/the_tester.csproj" /property:Configuration=Release /p:Version=$version

&"C:/Program Files (x86)/Inno Setup 6/ISCC.exe" "$directPath/test-setup.iss"

if (Test-Path "C:/Users/rhoadg/Documents/GitHub/greg-leg/Installer/$version") 
{
    Write-Host "Folder Exists - Not Creating it"
}
else 
{
    New-Item -Path "C:/Users/rhoadg/Documents/GitHub/greg-leg/Installer/$version" -ItemType directory
}

Copy-Item $mainExecutable -Destination "$directPath/Installer/$version/the_tester.exe"
