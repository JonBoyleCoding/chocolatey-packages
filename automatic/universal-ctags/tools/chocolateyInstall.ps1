$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-18/p5.9.20201213.0-19-g6262ea62/ctags-2020-12-18_p5.9.20201213.0-19-g6262ea62-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-18/p5.9.20201213.0-19-g6262ea62/ctags-2020-12-18_p5.9.20201213.0-19-g6262ea62-x64.zip'
  checksum       = 'BDA6C96BC90BB4AD4144705313C5D3B010469A27D53D252BF3DBAA2A68C44CE3'
  checksum64     = '307BFAB67EF68CF2AD769152D0E93105F653C665E98331FD531DF4819CE10A76'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
