$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-07-19/p5.9.20210718.0-9-gb5cd9f4e/ctags-2021-07-19_p5.9.20210718.0-9-gb5cd9f4e-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-07-19/p5.9.20210718.0-9-gb5cd9f4e/ctags-2021-07-19_p5.9.20210718.0-9-gb5cd9f4e-x64.zip'
  checksum       = 'AAF06345CFBDC354075700DE0F8EC3D04D99EC8B907B26D1E6237A970A086686'
  checksum64     = '576F4B3F86BF454EECC2E04FFE5C4CD24222A34701580B771E0083FAC0EC7276'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
