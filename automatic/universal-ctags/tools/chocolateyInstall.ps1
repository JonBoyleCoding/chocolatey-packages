$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-23/p5.9.20210117.0-48-g78621a0a/ctags-2021-01-23_p5.9.20210117.0-48-g78621a0a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-23/p5.9.20210117.0-48-g78621a0a/ctags-2021-01-23_p5.9.20210117.0-48-g78621a0a-x64.zip'
  checksum       = '4DA94527D8196138C3BEDAAC50EF51E2A3B487B16704A0FDC230209534771178'
  checksum64     = 'D9C837AEE9D2D8CF6B2306B0F334782F5DD2061E1F04D2A9C64126B1D50EE0A7'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
