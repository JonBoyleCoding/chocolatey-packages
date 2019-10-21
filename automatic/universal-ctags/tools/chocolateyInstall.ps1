$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-20/fea2eacf/ctags-2019-10-20_fea2eacf-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-20/fea2eacf/ctags-2019-10-20_fea2eacf-x64.zip'
  checksum       = '0830C6ADBFAB0E4B8F95176D29E39B9E1C1DA460E543CC10EA733C35E861AC4B'
  checksum64     = '5AC0E7582201D55F1A6F99A6FD0BA3EF41669EEB3B270831456A14FAD1A54F2C'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
