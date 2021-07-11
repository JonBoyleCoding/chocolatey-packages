$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-07-10/p5.9.20210627.0-4-gc8107978/ctags-2021-07-10_p5.9.20210627.0-4-gc8107978-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-07-10/p5.9.20210627.0-4-gc8107978/ctags-2021-07-10_p5.9.20210627.0-4-gc8107978-x64.zip'
  checksum       = '5F7AC8246B91189A5D9718386A11B2660610DAEFB49ED45F8BCD1C776B2F1D75'
  checksum64     = 'D1057DBAAFDE2952D10CFC376BE21284F5523D8A5B5165095AE1D9FEC942B7FD'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
