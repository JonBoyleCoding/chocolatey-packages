$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-19/80f00ab4/ctags-2019-09-19_80f00ab4-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-19/80f00ab4/ctags-2019-09-19_80f00ab4-x64.zip'
  checksum       = '35761901C138AF81CC88178C0E309376B74BA8E2D6EAABA89CC8EE6BB13FE064'
  checksum64     = '712346CD64A2022A55477410B6D9A32D88CCF092AC8C3A4BCD5A6446C727F24F'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
