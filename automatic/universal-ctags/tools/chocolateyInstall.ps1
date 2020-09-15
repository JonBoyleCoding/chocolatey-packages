$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-09-14/b599093f/ctags-2020-09-14_b599093f-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-09-14/b599093f/ctags-2020-09-14_b599093f-x64.zip'
  checksum       = 'A423C5E690C6A1CCF34A0F3AC544CA554AB8561235A56461C8F02BE8E3E28707'
  checksum64     = '79E96BE66575BA4B14C1D9B28EC94408AFA06C192E5DD6A2342EB0AF6B6B45F6'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
