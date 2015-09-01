$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

. $scriptDir\Unzip.ps1

md C:\opt -Force

Unzip "$($scriptDir)\apache-ant-1.9.6-bin.zip" "C:\opt"

[Environment]::SetEnvironmentVariable("ANT_HOME", "C:\opt\apache-ant-1.9.6", "Machine")
$path = [Environment]::GetEnvironmentVariable("PATH", "Machine")
if ($path -NotContains '%ANT_HOME%') {
    [Environment]::SetEnvironmentVariable("PATH", "$($path);%ANT_HOME%\bin", "Machine")
}
