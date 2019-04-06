$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-05/07796eab/ctags-2019-04-05_07796eab-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-05/07796eab/ctags-2019-04-05_07796eab-x64.zip'
  checksum       = 'CF7CA776B1D90823A42303DCAA8442E7F92132265F1F2C996C9AFA6734717514'
  checksum64     = 'E03494368B2C35F3B353D26911DBDD84AD59BEE390C219D762A643BACF75DCA2'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
