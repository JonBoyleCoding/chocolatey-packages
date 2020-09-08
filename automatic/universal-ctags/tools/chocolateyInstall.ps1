$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-09-07/717028d4/ctags-2020-09-07_717028d4-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-09-07/717028d4/ctags-2020-09-07_717028d4-x64.zip'
  checksum       = '4A1C08111070CB5628E263D9E37E43B4F8AB6407E2386300541812A64B0A09B9'
  checksum64     = '08D26A45C7F10D0306D3CC4DB2565804C16841FB3358D04F90FF771318A91241'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
