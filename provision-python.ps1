$ErrorActionPreference = "Stop"
$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

$python_architecture = ".amd64"
if ([IntPtr]::size -eq 4) {
    $python_architecture = ""
}

md C:\opt -Force

Start-Process -FilePath "msiexec" -ArgumentList "/i","$($scriptDir)\python-2.7.10$($python_architecture).msi","/qn"," TARGETDIR=C:\opt\python-2.7.10","ALLUSERS=1" -Wait -Passthru

[Environment]::SetEnvironmentVariable("PYTHON_HOME", "C:\opt\python-2.7.10", "Machine")
$path = [Environment]::GetEnvironmentVariable("PATH", "Machine")
if ($path -NotContains '%PYTHON_HOME%') {
    [Environment]::SetEnvironmentVariable("PATH", "$($path);%PYTHON_HOME%", "Machine")
}
