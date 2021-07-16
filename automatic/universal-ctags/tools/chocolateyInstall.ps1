$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-07-15/p5.9.20210711.0-8-g23ea3765/ctags-2021-07-15_p5.9.20210711.0-8-g23ea3765-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-07-15/p5.9.20210711.0-8-g23ea3765/ctags-2021-07-15_p5.9.20210711.0-8-g23ea3765-x64.zip'
  checksum       = '9BB812FE2943D2FDB68525A441FFD914600315C46963F7AC55640A12E70A24FC'
  checksum64     = '1AD675948CBAEEF798D75812BA1AFBA6376A06031AA2D80E202569D7633765C4'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
