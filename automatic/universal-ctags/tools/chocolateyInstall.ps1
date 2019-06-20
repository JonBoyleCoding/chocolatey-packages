$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-19/6e3f1aa1/ctags-2019-06-19_6e3f1aa1-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-19/6e3f1aa1/ctags-2019-06-19_6e3f1aa1-x64.zip'
  checksum       = '52AB8A37B8FCE3993D21889AFFEC7EFB6E0FC0BBC91B6E32D9E267B465AAB112'
  checksum64     = '237E5F50871BFD1B6DF999DAA4783338AA7AD5A6D4A0F1DF0162B1B6EA902191'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
