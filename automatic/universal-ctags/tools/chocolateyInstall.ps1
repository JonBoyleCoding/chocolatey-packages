$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-26/1df96c15/ctags-2019-11-26_1df96c15-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-26/1df96c15/ctags-2019-11-26_1df96c15-x64.zip'
  checksum       = 'A1B82D1ACC0AE3458A9AF7E55CE1CBF2DFF7A0372D5F6DC649672F527C5E7583'
  checksum64     = '61B01A4B681F6C098E6CB315C68849FDAC47D7B44A7EC8DC4C5BF33BFB1C7615'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
