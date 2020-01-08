$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-01-07/a3c87ab5/ctags-2020-01-07_a3c87ab5-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-01-07/a3c87ab5/ctags-2020-01-07_a3c87ab5-x64.zip'
  checksum       = '8F9F82643726D097A86F8CC48D70B65AB747B51783C32FE535D374E14BF74C76'
  checksum64     = '935CB080EC4AF485AB794980C8BA7EAFC2213AA45F239622862DB9745152C867'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
