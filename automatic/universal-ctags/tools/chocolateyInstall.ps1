$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-01/p5.9.20201129.0-44-ge52cf4a7/ctags-2020-12-01_p5.9.20201129.0-44-ge52cf4a7-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-01/p5.9.20201129.0-44-ge52cf4a7/ctags-2020-12-01_p5.9.20201129.0-44-ge52cf4a7-x64.zip'
  checksum       = 'E8099B470BAF640A5A9B2CBDB79FF3D9CF128E51FC324BF2659188DCE7C54705'
  checksum64     = '4E14508857A386D11BD1D49EF70540A3047CEFEC41D35AE5F62A06044B9F2EA0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
