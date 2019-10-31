$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-30/24904793/ctags-2019-10-30_24904793-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-30/24904793/ctags-2019-10-30_24904793-x64.zip'
  checksum       = '091F91F0593AC32BEDDF32BF2D5A508BA91077FCCDF0601BE63DACA1D09CB1BB'
  checksum64     = '8ED6830968C654A3AB747C1691E1B04FEDA8E776D51650ECDFEECA3C84801CC4'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
