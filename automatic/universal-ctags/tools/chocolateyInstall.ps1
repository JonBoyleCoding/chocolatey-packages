$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-06-07/f9de6921/ctags-2020-06-07_f9de6921-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-06-07/f9de6921/ctags-2020-06-07_f9de6921-x64.zip'
  checksum       = '1546BBC55440950D62609C31F9DA99630FF047B1BEB6A0E07E8C27215CB9D62E'
  checksum64     = '7E7EC1529828E5CA8042157BE928F139D2E33D967E00E51F0C0DFAF9F9152F39'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
