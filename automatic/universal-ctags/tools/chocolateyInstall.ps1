$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-04-17/0e2eba61/ctags-2020-04-17_0e2eba61-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-04-17/0e2eba61/ctags-2020-04-17_0e2eba61-x64.zip'
  checksum       = '788443FF98A6C9164C0ECB5E7548C8544223E4EF7D9D22FA4C9F7188B34835E8'
  checksum64     = '3C89E644B519739E63DC92F8AB311AF71D1FFED615CF6DE59C8791EECA0D2B44'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
