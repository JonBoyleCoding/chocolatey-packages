$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-17/p5.9.20210613.0-12-g1469a65f/ctags-2021-06-17_p5.9.20210613.0-12-g1469a65f-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-17/p5.9.20210613.0-12-g1469a65f/ctags-2021-06-17_p5.9.20210613.0-12-g1469a65f-x64.zip'
  checksum       = 'E6B5A299F6F51AA153412DFDA27E91701BEAB8B3218F3AA3FBA1D5594BAB622C'
  checksum64     = '8EE9ECCF1D3802F17307F3626AAA53AE3278C563B09F5D74363902C2B7B8C2CA'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
