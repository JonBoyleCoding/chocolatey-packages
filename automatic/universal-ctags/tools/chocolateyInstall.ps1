$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-28/p5.9.20201227.0-11-g09e95135/ctags-2020-12-28_p5.9.20201227.0-11-g09e95135-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-28/p5.9.20201227.0-11-g09e95135/ctags-2020-12-28_p5.9.20201227.0-11-g09e95135-x64.zip'
  checksum       = '504C77820765D169F09179A8F1E3DEDFF2CEC6E27C6E56B001FF0641A8834FE3'
  checksum64     = '34533BFD2C7F008221E2C23118B7818E57C417CBBB532351D1CA7C6E6730D310'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
