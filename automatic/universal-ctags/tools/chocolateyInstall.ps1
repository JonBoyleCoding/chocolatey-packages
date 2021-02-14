$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-13/p5.9.20210207.0-79-g3d2d9a25/ctags-2021-02-13_p5.9.20210207.0-79-g3d2d9a25-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-13/p5.9.20210207.0-79-g3d2d9a25/ctags-2021-02-13_p5.9.20210207.0-79-g3d2d9a25-x64.zip'
  checksum       = 'B346CE660FC8275B5BCAC1220829386DC06F066EB2F1264523BD57B614826C64'
  checksum64     = 'FC2DA651FC4492E3633E784DC2C824A3E2E4DD31FD9FB30475229956354AAED5'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
