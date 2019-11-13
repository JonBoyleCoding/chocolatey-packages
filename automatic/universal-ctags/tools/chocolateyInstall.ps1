$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-12/89393951/ctags-2019-11-12_89393951-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-12/89393951/ctags-2019-11-12_89393951-x64.zip'
  checksum       = '0A6B0A4274A732ED6AB640BEF4907298A413725A2E8682FA37BB2997ACEAD286'
  checksum64     = '13E259E091AEE03D667E7FFC60A46676FF41C70D30E4B0B113B844D0E5F452F6'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
