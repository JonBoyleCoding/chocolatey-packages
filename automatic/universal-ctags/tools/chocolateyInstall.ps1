$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-08/09890810/ctags-2019-04-08_09890810-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-08/09890810/ctags-2019-04-08_09890810-x64.zip'
  checksum       = '9EDE66AE401A00D640B16823F38106B33F5936E2859ECBC3BA9D33A013675622'
  checksum64     = '67AE360FBA730AC1D990924FECCE2CAAA0C2515817410001F73B75E689604B03'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
