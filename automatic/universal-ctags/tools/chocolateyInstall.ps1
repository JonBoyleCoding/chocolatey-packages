$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-12/f42b573f/ctags-2019-12-12_f42b573f-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-12/f42b573f/ctags-2019-12-12_f42b573f-x64.zip'
  checksum       = '65598AC248521C964C015D99EA4291DC43036523D8359F2241D5CF69599DE79F'
  checksum64     = 'E01DFCF154B3543B2EDA3DAC229FBBB4766AFD4AC31194FCA242EC0D4EE49966'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
