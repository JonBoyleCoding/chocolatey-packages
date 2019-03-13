$ErrorActionPreference = 'Stop'

$toolsPath      = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName    = 'freedownloadmanager'
  fileType       = $fileType
  file           = gi $toolsPath\fdm5_x86_setup.exe
  file64         = gi $toolsPath\fdm5_x64_setup.exe
  silentArgs     = '/SP- /VERYSILENT /NORESTART'
  validExitCodes = @(0)
  softwareName   = ''
}
Install-ChocolateyInstallPackage @packageArgs
ls $toolsPath\*.exe | % { rm $_ -ea 0; if (Test-Path $_) { sc "$_.ignore" "" }}

$packageName = $packageArgs.packageName
$installLocation = Get-AppInstallLocation "$packageName*"
if (!$installLocation)  { Write-Warning "Can't find $packageName install location"; return }
Write-Host "$packageName installed to '$installLocation'"

Register-Application "$installLocation\Free Download Manager\fdm.exe"
Write-Host "$packageName registered as $packageName"
