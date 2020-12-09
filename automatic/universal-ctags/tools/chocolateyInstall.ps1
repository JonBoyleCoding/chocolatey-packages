$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-08/p5.9.20201206.0-13-ge6f258dd/ctags-2020-12-08_p5.9.20201206.0-13-ge6f258dd-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-08/p5.9.20201206.0-13-ge6f258dd/ctags-2020-12-08_p5.9.20201206.0-13-ge6f258dd-x64.zip'
  checksum       = '89D63FA28C91031FA636B629D158ACCA08B1BEC604D6448A8B64CA18A6E4E2E1'
  checksum64     = '60D74D3C77269996A5AE1EC084878D3D38B0AB3450C09E37EBEDCACC1D0DC602'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
