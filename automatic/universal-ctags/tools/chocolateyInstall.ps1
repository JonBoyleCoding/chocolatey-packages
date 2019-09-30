$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-29/421f3941/ctags-2019-09-29_421f3941-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-29/421f3941/ctags-2019-09-29_421f3941-x64.zip'
  checksum       = '70DF253DBDFFE76E2F1D31E34A0528082674DAF7462BA55B5641D779B4F685D8'
  checksum64     = '33EBA8C96263475C708489AAF63215AE731CC79A0E08B7120F9C982C10D72B57'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
