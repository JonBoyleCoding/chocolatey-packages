$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-03-08/5283b195/ctags-2020-03-08_5283b195-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-03-08/5283b195/ctags-2020-03-08_5283b195-x64.zip'
  checksum       = 'E06B20329CC5D5DFD75AFD39F3D195FB6ECDBB91447FF5F083DD14E3A4AC754E'
  checksum64     = '06C1D5C8BE51E0EED39DD33B200034B3B114C3D6E08EF20103FBACB85CD92B3E'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
