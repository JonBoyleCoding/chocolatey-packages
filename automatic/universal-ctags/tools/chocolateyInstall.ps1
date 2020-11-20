$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-19/p5.9.20201115.0-19-g2aa034a3/ctags-2020-11-19_p5.9.20201115.0-19-g2aa034a3-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-19/p5.9.20201115.0-19-g2aa034a3/ctags-2020-11-19_p5.9.20201115.0-19-g2aa034a3-x64.zip'
  checksum       = '09DF19DE5917EE24C5DC48FD8624808FDDE0CD7688C0C71802F2F22279DB7A87'
  checksum64     = 'F5CAE4EE41B6EA9FE2209D5F27295DD3A3B770ED66B91ED37E0F48D2906519DF'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
