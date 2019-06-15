$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-14/bb4f87cd/ctags-2019-06-14_bb4f87cd-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-14/bb4f87cd/ctags-2019-06-14_bb4f87cd-x64.zip'
  checksum       = 'EA1A39D40B04F5F106B6EA6FC0836F1FE686B4A2BD08635D7C55A5B06701679C'
  checksum64     = '6FAE36898241A7F87BE4586EA27B3DD51D3B7C96ADF5BF1829B195899D07001B'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
