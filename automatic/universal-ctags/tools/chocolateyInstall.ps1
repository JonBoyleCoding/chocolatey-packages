$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-03-12/p5.9.20210307.0-3-g745ac2f5/ctags-2021-03-12_p5.9.20210307.0-3-g745ac2f5-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-03-12/p5.9.20210307.0-3-g745ac2f5/ctags-2021-03-12_p5.9.20210307.0-3-g745ac2f5-x64.zip'
  checksum       = '27337C20486A032EBCD2B80D152F6FF463FAB6E35E0D0D9A49D162FD2A6B8B3D'
  checksum64     = 'EF4B3007492C1BF07AFB2C9A776F0F586F3285773ADBB0887249D7AF32748B22'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
