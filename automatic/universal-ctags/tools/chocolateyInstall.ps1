$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-16/p5.9.20210110.0-15-g1ae6b57f/ctags-2021-01-16_p5.9.20210110.0-15-g1ae6b57f-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-16/p5.9.20210110.0-15-g1ae6b57f/ctags-2021-01-16_p5.9.20210110.0-15-g1ae6b57f-x64.zip'
  checksum       = '5C5494288FDBDCA48D7BD1745F0BE750CB64F3A7DB33A617D1DC902A7EB9E55D'
  checksum64     = '8B5843BC5CD5CB23049A471A7D17C21F940CF4A788E0D5445B0614F6376C76A1'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
