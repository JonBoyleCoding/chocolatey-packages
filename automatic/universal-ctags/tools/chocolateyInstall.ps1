$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-09/2a45704c/ctags-2020-07-09_2a45704c-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-09/2a45704c/ctags-2020-07-09_2a45704c-x64.zip'
  checksum       = 'C34272E59348E31346C5D3D1BF073D4BCBF2FD59C251C92706869FDC9CB85F8E'
  checksum64     = 'F5D5B3B5A93BE1958FE92B88BD75992E24C72AE5235DD5F4FA3E3DBD80BECFC3'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
