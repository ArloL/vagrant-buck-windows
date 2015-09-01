$scriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

$git_architecture = "64"
if ([IntPtr]::size -eq 4) {
    $git_architecture = "32"
}

& "$($scriptDir)\Git-2.5.1-$($git_architecture)-bit.exe" /SILENT /LOADINF="$($scriptDir)\git-setup.inf"
