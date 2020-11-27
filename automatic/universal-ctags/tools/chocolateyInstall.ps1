$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-26/p5.9.20201122.0-61-g4f69a728/ctags-2020-11-26_p5.9.20201122.0-61-g4f69a728-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-26/p5.9.20201122.0-61-g4f69a728/ctags-2020-11-26_p5.9.20201122.0-61-g4f69a728-x64.zip'
  checksum       = '53ACF86DED8309D57F9727A43EA317BD369304E1159C1597A3048E5280555AF1'
  checksum64     = 'CCF055A3FC8A04B6995AB9A9235A63517B2036F44E3D0610ACB46E547AEFEA6C'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
