$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-11/1208e454/ctags-2019-03-11_1208e454-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-11/1208e454/ctags-2019-03-11_1208e454-x64.zip'
  checksum       = 'D1565D91494547A9A8C1DC3100A2CDC1DB75A47974B3C94B1469C8FD1DCF272E'
  checksum64     = '5D594E7B30DEF70A353B26FF9C7D88CABC03DF8D7A214360704829630BD900AC'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
