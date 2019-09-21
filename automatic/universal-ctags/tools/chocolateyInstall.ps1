$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-20/ddd09fc8/ctags-2019-09-20_ddd09fc8-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-20/ddd09fc8/ctags-2019-09-20_ddd09fc8-x64.zip'
  checksum       = '174334CA727E5A8C2CEB51E07F368F8891DAC3AA44F18D93BE3E30337454CB4A'
  checksum64     = '6845AABECAC2772DD026B462402DB2291C0A418617ADD2D46520843EC73E957B'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
