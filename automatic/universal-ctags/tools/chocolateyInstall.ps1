$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-22/p5.9.20210117.0-47-g231bbb36/ctags-2021-01-22_p5.9.20210117.0-47-g231bbb36-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-22/p5.9.20210117.0-47-g231bbb36/ctags-2021-01-22_p5.9.20210117.0-47-g231bbb36-x64.zip'
  checksum       = '79A3D5F44870406AF0CDB597EC1C00EB011ECEE19ADD1902BF84755547E3F1D6'
  checksum64     = '7C3C76090B3BF1BB757AE79096BEB2850FFF52BD4B7A63E8353793B4D8494F93'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
