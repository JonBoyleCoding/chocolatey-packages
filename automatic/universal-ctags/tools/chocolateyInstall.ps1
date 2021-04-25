$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-24/p5.9.20210418.0-8-g681a8d5f/ctags-2021-04-24_p5.9.20210418.0-8-g681a8d5f-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-24/p5.9.20210418.0-8-g681a8d5f/ctags-2021-04-24_p5.9.20210418.0-8-g681a8d5f-x64.zip'
  checksum       = 'F2A8A76E1CC311EA4582C8B0B4280FFD715A87FA6CE6082B58733B7CA1083D39'
  checksum64     = '3615B94E47C95CDE9A16A4D1428410A1B72E350BBACCDA59B2304064A82524EE'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
