$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-09-21/86bdb84c/ctags-2020-09-21_86bdb84c-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-09-21/86bdb84c/ctags-2020-09-21_86bdb84c-x64.zip'
  checksum       = '5544436631A1D6B62593ED3E5D6D1332691E6FDBF04526A12954EC364E02590E'
  checksum64     = '8A3C0BBCEA7317B19D2A3E7241F60DBCB1004D20D6A6CA4162BDEB817A1B3B6F'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
