$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-09-12/b43eb398/ctags-2020-09-12_b43eb398-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-09-12/b43eb398/ctags-2020-09-12_b43eb398-x64.zip'
  checksum       = '06F56292C9AC911DED5B2C4BD0B9C049FD237C7ADA5FCFA5145DA8E11787126A'
  checksum64     = '4CDCA08A153016A65BA8A4BCBBDFA98B234ED6D986CB308C29154AD984CCA747'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
