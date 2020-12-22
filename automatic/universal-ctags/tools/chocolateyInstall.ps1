$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-21/p5.9.20201220.0-2-g4acbc71a/ctags-2020-12-21_p5.9.20201220.0-2-g4acbc71a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-21/p5.9.20201220.0-2-g4acbc71a/ctags-2020-12-21_p5.9.20201220.0-2-g4acbc71a-x64.zip'
  checksum       = 'E12BF264E155F8B3F88C91EEC2525CCB0E77E679A500EF4F3FD9EC15B223524D'
  checksum64     = 'C0179F4E6985EBAC96AC774E9B40B57304186CFF58AA387419036F54F198C9A0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
