$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-27/f17ca773/ctags-2019-11-27_f17ca773-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-27/f17ca773/ctags-2019-11-27_f17ca773-x64.zip'
  checksum       = '6F83303D001BFAF986F572A7D20565174EB3C0844C30648468A782FF768C0A2C'
  checksum64     = '2EC7AD5FBD76F5738281D87BC6FB587D6A068FC7ED6E493E1538131B4A36C98A'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
