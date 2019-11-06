$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-05/0b17c8a2/ctags-2019-11-05_0b17c8a2-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-05/0b17c8a2/ctags-2019-11-05_0b17c8a2-x64.zip'
  checksum       = 'D37C20B6D2E9BEB74407ACC9E98B8E852A75652D7C62D9B60256F80067A7FA8E'
  checksum64     = '600B095452A47B8C3027C1BCFBF6245220FDCDB8A921FF7E632CD5AE93FBB9E4'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
