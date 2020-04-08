$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-04-07/3f64f1fc/ctags-2020-04-07_3f64f1fc-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-04-07/3f64f1fc/ctags-2020-04-07_3f64f1fc-x64.zip'
  checksum       = '45414A60362E28169355CD8094D9DFF91263684E1D97E8EE7D40F51B60ECB6DD'
  checksum64     = '3F8D821627C322B29AA29F40074CDEB68ED21C77BFDBCBBC715B512F11869335'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
