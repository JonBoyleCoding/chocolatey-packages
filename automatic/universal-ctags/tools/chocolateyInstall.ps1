$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-24/1ee1f939/ctags-2019-07-24_1ee1f939-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-24/1ee1f939/ctags-2019-07-24_1ee1f939-x64.zip'
  checksum       = '1B8545B3C189CDD494F522E3789A354E7B3DF5E3D1ADF14D88BA2D28D0041CDF'
  checksum64     = 'CF27026D40CB68019FD6A1B483A3FD76B370EEF559B3EFCB6A5BBE389AD2F0FE'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
