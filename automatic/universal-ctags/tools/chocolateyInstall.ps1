$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-06/20ae3f5b/ctags-2019-07-06_20ae3f5b-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-06/20ae3f5b/ctags-2019-07-06_20ae3f5b-x64.zip'
  checksum       = '55E14EEE242B6049057A6D4928089B9206E6ACDD2941DA9C4F78C78A831BB89F'
  checksum64     = '147CD3E67372F8F9F32D0355FB986A4F0A3607B85ED1F6FA5A635D42466D069A'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
