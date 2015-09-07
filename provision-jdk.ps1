$ErrorActionPreference = "Stop"
$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

$java_architecture = "x64"
if ([IntPtr]::size -eq 4) {
    $java_architecture = "i586"
}

if (!(Test-Path "C:\Program Files\Java\jdk1.8.0_60")) {
    Start-Process -FilePath "$($scriptDir)\jdk-8u60-windows-$($java_architecture).exe" -ArgumentList "/s","ADDLOCAL=`"ToolsFeature`"" -Wait -Passthru
}

[Environment]::SetEnvironmentVariable("JAVA_HOME", "C:\Program Files\Java\jdk1.8.0_60", "Machine")
$path = [Environment]::GetEnvironmentVariable("PATH", "Machine")
if ($path -NotContains '%JAVA_HOME%') {
    [Environment]::SetEnvironmentVariable("PATH", "$($path);%JAVA_HOME%\bin", "Machine")
}
