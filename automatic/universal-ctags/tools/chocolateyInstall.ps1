$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-03/7219b778/ctags-2019-12-03_7219b778-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-03/7219b778/ctags-2019-12-03_7219b778-x64.zip'
  checksum       = 'ECD4DF116F9258059C887B606C1C4299921E1E8B04B0F557C4A70F7F2BD6BDE6'
  checksum64     = '4A6C5A7B6655F4DFD3C6A93022E1B40CC2E2BB9A12BFF5EC0A668AC7BF83759E'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
