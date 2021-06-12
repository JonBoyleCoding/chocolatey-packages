$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-11/p5.9.20210606.0-13-ge0688ec3/ctags-2021-06-11_p5.9.20210606.0-13-ge0688ec3-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-11/p5.9.20210606.0-13-ge0688ec3/ctags-2021-06-11_p5.9.20210606.0-13-ge0688ec3-x64.zip'
  checksum       = '6280DDBB49F98F0E91D21E001BB85D6D9092E3D0E54248090B4D9167DA61EAEB'
  checksum64     = '0DA5A199136889F33EC7FE2B9EF06BC75622B252FA7947B2BC675A3775BD5C37'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
