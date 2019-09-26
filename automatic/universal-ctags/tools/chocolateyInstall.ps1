$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-25/9757e4ff/ctags-2019-09-25_9757e4ff-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-25/9757e4ff/ctags-2019-09-25_9757e4ff-x64.zip'
  checksum       = '3212E232E71E4901902C652F48136C9D9B917A0A72BB8916D8436EDF270E9083'
  checksum64     = '5EB8D61EED5F59F3418215EA635A8EEDADD97B9EC389E649D3CA6684E9B01AC8'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
