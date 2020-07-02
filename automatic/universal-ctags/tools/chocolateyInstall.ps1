$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-01/20e934e3/ctags-2020-07-01_20e934e3-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-01/20e934e3/ctags-2020-07-01_20e934e3-x64.zip'
  checksum       = 'CB128F4EE518A6C55B4F23D98838A5453EF0998BD8A7659BB1CC5FAA6F1A17EB'
  checksum64     = '3E1CE7AFDE6D3C9098EC29286185C01B0481D580DD327E1BC4A6F2BBE3663094'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
