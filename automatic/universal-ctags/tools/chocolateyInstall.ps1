$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-10/79799bd4/ctags-2020-07-10_79799bd4-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-10/79799bd4/ctags-2020-07-10_79799bd4-x64.zip'
  checksum       = '1A4237EA8848B3D4F9F26315971665ABED98F48A0EA66BFCFF7B021C97F8DAFA'
  checksum64     = '06B664BBAD253A83FE9AD8741A18A357017FE7870F69CDD15299F7FD20D42FB4'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
