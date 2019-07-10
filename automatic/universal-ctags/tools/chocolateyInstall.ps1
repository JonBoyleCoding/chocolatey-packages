$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-09/1258adfc/ctags-2019-07-09_1258adfc-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-09/1258adfc/ctags-2019-07-09_1258adfc-x64.zip'
  checksum       = '3FA99177033F09C21E43BF1DC21594AC30CD0336586E595F0BF67C765F22DD14'
  checksum64     = 'B4F29D6B18116E5612FA1B0ADF89F3394E24C4268EF7FDB22868E612936F969F'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
