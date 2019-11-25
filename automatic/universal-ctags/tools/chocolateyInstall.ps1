$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-24/a0e5fd9b/ctags-2019-11-24_a0e5fd9b-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-24/a0e5fd9b/ctags-2019-11-24_a0e5fd9b-x64.zip'
  checksum       = 'DF4394387E12192D247F993B53D40E2FFA6A86A7671DB7BEE81B952F5C9C3C2E'
  checksum64     = '89814C7886CB45D9071102F410EA2C157AA6CB44E9FE834D8698F9C62DFD3D56'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
