$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-26/p5.9.20201025.0-2-g5d000b1a/ctags-2020-10-26_p5.9.20201025.0-2-g5d000b1a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-26/p5.9.20201025.0-2-g5d000b1a/ctags-2020-10-26_p5.9.20201025.0-2-g5d000b1a-x64.zip'
  checksum       = '8BB7064D757AD39F7748FA408429D2950FF7F889F44FF94271A0497BCE536604'
  checksum64     = 'EAD868F16A68EEE11EF3627A4AF912B43EF757698BAE834EB514B76175CBDC64'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
