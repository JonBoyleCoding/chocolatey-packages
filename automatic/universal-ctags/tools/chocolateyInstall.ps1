$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-25/p5.9.20210221.0-9-g1ed3fb28/ctags-2021-02-25_p5.9.20210221.0-9-g1ed3fb28-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-25/p5.9.20210221.0-9-g1ed3fb28/ctags-2021-02-25_p5.9.20210221.0-9-g1ed3fb28-x64.zip'
  checksum       = 'D30F7F7EACCDB359EFE4E4C54B892F92D2CAA2F97FB618294CAA884E0D0B64C0'
  checksum64     = '39DEB4262EECEB72C7607CE3E9917B8AE4E484C37FAE623365F0166B8F8CA507'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
