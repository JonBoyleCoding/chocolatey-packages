$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-04/p5.9.20210530.0-13-g92b49e2e/ctags-2021-06-04_p5.9.20210530.0-13-g92b49e2e-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-04/p5.9.20210530.0-13-g92b49e2e/ctags-2021-06-04_p5.9.20210530.0-13-g92b49e2e-x64.zip'
  checksum       = 'B8C38845B7638834ACB29E13B7B239C3D1C509AD00A35342CE04FD1944F2A4B3'
  checksum64     = 'E7AC1C36DE0AB0655C4819CD079818B4610D3D64A14C4A296506B0A108A54770'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
