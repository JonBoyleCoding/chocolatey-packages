$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-25/1924e8a5/ctags-2019-12-25_1924e8a5-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-25/1924e8a5/ctags-2019-12-25_1924e8a5-x64.zip'
  checksum       = '651E85014CAD4208570D333AA218D3AA3BF0FB0EC9704EFD89F775250D94C53C'
  checksum64     = '101EDC58E68771AE79FE1BC12FE45515DCF13AB5782E2B59ACB60BF98A7F5CDA'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
