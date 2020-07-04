$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-03/1cae951a/ctags-2020-07-03_1cae951a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-03/1cae951a/ctags-2020-07-03_1cae951a-x64.zip'
  checksum       = '8E3788AD99A8CFF8269389D634DF73E11F81274338DB4CBD33EBD58937629F41'
  checksum64     = '82D37EF982EB284E5350E04FDF5A6386F470473B6CCF6EED2CA0659213526C3D'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
