$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-04/ec8c9279/ctags-2019-10-04_ec8c9279-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-04/ec8c9279/ctags-2019-10-04_ec8c9279-x64.zip'
  checksum       = '6D14F0E336805DF79DA305F8E5766A8BF0426E502D783BE134DF3D2D89F1386A'
  checksum64     = '184E9B22AAE5217502B8EE5D57939D18682B3DE8B931F4D29078B74C8B05E9B8'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
