Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
$directPath = $env:GITHUB_WORKSPACE
$mainExecutable = "$directPath/Tests/the_tester/bin/Release/net6.0-windows/the_tester.exe"
$version = "1.1"

&"C:/Program Files/Microsoft Visual Studio/2022/Enterprise/MSBuild/Current/Bin/MSBuild.exe" "$directPath/Tests/the_tester/the_tester.csproj" /property:Configuration=Release /p:Version=$version

&"C:/Program Files (x86)/Inno Setup 6/ISCC.exe" "$directPath/test-setup.iss"

if (Test-Path "$directPath/Installer/$version") 
{
    Write-Host "Folder Exists - Not Creating it"
}
else 
{
    New-Item -Path "$directPath/Installer/$version" -ItemType directory
}

Copy-Item $mainExecutable -Destination "$directPath/Installer/$version/the_tester.exe"
