$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-25/1a94658c/ctags-2019-07-25_1a94658c-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-25/1a94658c/ctags-2019-07-25_1a94658c-x64.zip'
  checksum       = 'C586DED099EB392986B785378B74E19582E8B1B2704844AC19D545EB53D0A1DC'
  checksum64     = 'B00ACD5A054D0A7B33566F37A1D3B978555872A56AEF9C8C22100783EEA2CEDD'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
