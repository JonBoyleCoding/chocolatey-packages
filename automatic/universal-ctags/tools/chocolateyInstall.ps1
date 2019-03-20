$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-19/438fe93e/ctags-2019-03-19_438fe93e-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-19/438fe93e/ctags-2019-03-19_438fe93e-x64.zip'
  checksum       = 'D92D339B68815346303FFA4764C3692955BA2D553488F62C4C847AA95D50AE7E'
  checksum64     = '0830C5B0A81484309CEA06CB2319205EDCC48A76EDBD782C59FE01C76EC04C2C'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
