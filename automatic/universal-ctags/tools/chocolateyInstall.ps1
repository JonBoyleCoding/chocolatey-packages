$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-20/6928d2b3/ctags-2019-06-20_6928d2b3-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-20/6928d2b3/ctags-2019-06-20_6928d2b3-x64.zip'
  checksum       = '88797157446DFFBA7A43131F91A95D06EFFDE61724E33D84A79F50E06B5D0B71'
  checksum64     = 'C7D17EC0C2C55D3048FABFD01B9ECF8839181DBD44EB542978094E9ADBAA8B64'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
