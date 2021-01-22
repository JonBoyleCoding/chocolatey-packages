$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-21/p5.9.20210117.0-37-gd32c7730/ctags-2021-01-21_p5.9.20210117.0-37-gd32c7730-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-21/p5.9.20210117.0-37-gd32c7730/ctags-2021-01-21_p5.9.20210117.0-37-gd32c7730-x64.zip'
  checksum       = 'CEAA6DAEBF129E8D4254DF3C05E604C51B4930E4890E6081202B455F8C9688FC'
  checksum64     = '50196FC8DE71B9420241C841E389A225FE340BA46C708144A2C321D75B7C021E'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
