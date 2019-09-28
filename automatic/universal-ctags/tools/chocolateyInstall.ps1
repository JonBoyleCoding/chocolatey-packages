$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-27/535d2051/ctags-2019-09-27_535d2051-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-27/535d2051/ctags-2019-09-27_535d2051-x64.zip'
  checksum       = 'EABC56C7487344D9C605259439D85353F1445D0E78C5AAE21A304985C308B420'
  checksum64     = '805BB7B1C092E8E2556499AB1A445395704B3F801969222F8D9F9A09198C6DE7'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
