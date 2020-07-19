$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-18/e9fad9cf/ctags-2020-07-18_e9fad9cf-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-18/e9fad9cf/ctags-2020-07-18_e9fad9cf-x64.zip'
  checksum       = '1D4363B4443DE3A34FCE1C780E9EB5CA0380273C3CDC5F85FCBA7422CB467EA4'
  checksum64     = '6004656A5E969D5FF792887696B37F5B3D24D5B240F4B11CA274A9A160FFA2A2'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
