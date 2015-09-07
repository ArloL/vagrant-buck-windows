$ErrorActionPreference = "Stop"

md C:\opt -Force

if (Test-Path C:\opt\buck) {
    cd C:\opt\buck
    git pull
} else {
    git clone https://github.com/facebook/buck.git C:\opt\buck
    cd C:\opt\buck
}
ant

[Environment]::SetEnvironmentVariable("BUCK_HOME", "C:\opt\buck", "Machine")
$path = [Environment]::GetEnvironmentVariable("PATH", "Machine")
if ($path -NotContains '%BUCK_HOME%') {
    [Environment]::SetEnvironmentVariable("PATH", "$($path);%BUCK_HOME%\bin", "Machine")
}
