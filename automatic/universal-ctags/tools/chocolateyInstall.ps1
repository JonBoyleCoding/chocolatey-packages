$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-27/0c78c0c4/ctags-2020-05-27_0c78c0c4-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-27/0c78c0c4/ctags-2020-05-27_0c78c0c4-x64.zip'
  checksum       = 'E312011F0DA83D9A79FD14EE768225338650A34EC7D4890602BFBEE110790AC1'
  checksum64     = '70BF2C1F95205EBFC8169D21D47F91DDC5B29D5218DC1F94D2C7F16FDE9E7D54'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
