$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-16/18d822d2/ctags-2020-05-16_18d822d2-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-16/18d822d2/ctags-2020-05-16_18d822d2-x64.zip'
  checksum       = 'D0EA752D0F0F31DA43040541B76706A4AE93F5E9E8B50DD0D60E1091593B00E8'
  checksum64     = 'EAD783AA250F518C3393BD543C013FC25B051A96A41BE83C4A6BCFFE17789E0A'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
