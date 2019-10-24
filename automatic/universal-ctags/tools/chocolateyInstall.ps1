$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-23/26d41bb9/ctags-2019-10-23_26d41bb9-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-23/26d41bb9/ctags-2019-10-23_26d41bb9-x64.zip'
  checksum       = '555F93110943CBC67C0A17F77C8BA769DDF8FCE45A96591E66B56CF79B0BA0A1'
  checksum64     = 'E0666BDD8151F90D11266C515050083E8348816B02305632E5BE267F7BF10FB0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
