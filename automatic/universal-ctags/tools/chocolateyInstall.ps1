$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-03-06/p5.9.20210228.0-27-g3d521a1a/ctags-2021-03-06_p5.9.20210228.0-27-g3d521a1a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-03-06/p5.9.20210228.0-27-g3d521a1a/ctags-2021-03-06_p5.9.20210228.0-27-g3d521a1a-x64.zip'
  checksum       = '11417ABEE99A5770CF3A14640C709C7C6819AE28EDCDA801F43E3C8D94A43B9B'
  checksum64     = '7E25F14965A60D9AC1B5E08C2FD7BA16624EC8099C518EBE7B3DA62B35315230'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
