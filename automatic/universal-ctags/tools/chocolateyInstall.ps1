$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-13/1f504530/ctags-2019-06-13_1f504530-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-13/1f504530/ctags-2019-06-13_1f504530-x64.zip'
  checksum       = '82BC9DD6E0D71BD4956FAEF09AAF10D34A684F75E8ED12653E8F8003C27B48BD'
  checksum64     = 'E8537A454CD46C6711C78313844836DC293677723090204049ABF6710E48C981'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
