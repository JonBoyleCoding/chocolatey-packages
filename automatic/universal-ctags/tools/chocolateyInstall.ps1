$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-03/19df463b/ctags-2019-11-03_19df463b-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-03/19df463b/ctags-2019-11-03_19df463b-x64.zip'
  checksum       = '1D5B2E6987D581C6E62084F1F894FA67A63E3C5FCE3F3D277ABDC8E1D98E7F02'
  checksum64     = '50E9C131A8F8014094A4FDAC7FA8E5E235CBAC1A2523A5E8CA9159092DCC52CE'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
