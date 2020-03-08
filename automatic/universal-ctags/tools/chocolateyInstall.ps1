$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-03-07/ee8b8d59/ctags-2020-03-07_ee8b8d59-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-03-07/ee8b8d59/ctags-2020-03-07_ee8b8d59-x64.zip'
  checksum       = 'D99EF47925437503A203FC8A6F508CAC16160C97E63D51D2D9A02A7E271DCDCF'
  checksum64     = 'A093ACBA84118DC73AA3743577A6CE3FE14AB6BD97584D426729E8219B212B4F'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
