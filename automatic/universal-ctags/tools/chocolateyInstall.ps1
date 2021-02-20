$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-19/p5.9.20210214.0-7-gd532b5c4/ctags-2021-02-19_p5.9.20210214.0-7-gd532b5c4-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-19/p5.9.20210214.0-7-gd532b5c4/ctags-2021-02-19_p5.9.20210214.0-7-gd532b5c4-x64.zip'
  checksum       = '000DA07A4D41F32344B51953E35C93D78B64217EE55D00266FB48D53E182A929'
  checksum64     = 'DAE798CBD6179341D1048F1EAB1B40AD42AC5442531610AC3829B13272370C90'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
