$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-18/0f8e84d8/ctags-2019-11-18_0f8e84d8-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-18/0f8e84d8/ctags-2019-11-18_0f8e84d8-x64.zip'
  checksum       = '0E54AA1BDA4B0957F2D6662430BD6F1CBAB126702F739CCA2212C9ADAE46D957'
  checksum64     = '2055167C2B31AB4CB39710FDB3644684CB840E45078713DB59D4E2F9C16F46EB'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
