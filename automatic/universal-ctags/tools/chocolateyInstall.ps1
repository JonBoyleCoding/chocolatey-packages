$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-05-23/3fdf28bc/ctags-2019-05-23_3fdf28bc-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-05-23/3fdf28bc/ctags-2019-05-23_3fdf28bc-x64.zip'
  checksum       = 'DBC3FF92D50E41B20EAA3376E28D97B52885D5B10ADD4251ED079943FE6A0D34'
  checksum64     = '77AD60D776DF00A37E45DFDB05707489AF126352969C03D5EBC72C7EFD37BCD0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
