$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-05-16/2165a716/ctags-2019-05-16_2165a716-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-05-16/2165a716/ctags-2019-05-16_2165a716-x64.zip'
  checksum       = 'E864087BC23FB5BA8F4E8C27FAE6BD06979480CDB963DC4566482F650B95A017'
  checksum64     = '57B0AFC311C87AB20C15A1C9A790EBA8432EA879BEBB885D84A8C50050FBC345'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
