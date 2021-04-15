$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-14/p5.9.20210411.0-3-g23870d62/ctags-2021-04-14_p5.9.20210411.0-3-g23870d62-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-14/p5.9.20210411.0-3-g23870d62/ctags-2021-04-14_p5.9.20210411.0-3-g23870d62-x64.zip'
  checksum       = '7AD06C46CA9F210050D1F4B2DE364A968E840A34D4283627BCD5F75D5CDEA08D'
  checksum64     = 'F0D97283D2B00195349C30E8AD1ECDD8E1B5E693F9F34E1D03010D66FDD1C588'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
