$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-18/p5.9.20210117.0-6-gbf839d34/ctags-2021-01-18_p5.9.20210117.0-6-gbf839d34-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-18/p5.9.20210117.0-6-gbf839d34/ctags-2021-01-18_p5.9.20210117.0-6-gbf839d34-x64.zip'
  checksum       = 'B901182C0CE1EE7F510F91E0AE046D2006C087D18B563BC434D60DCF2B507A7D'
  checksum64     = '2E28D71E46FE63FDE6E2C2FAB61861C9270D313FF497C47AA7714775AFB5DB03'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
