$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-06-11/02cf1a61/ctags-2020-06-11_02cf1a61-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-06-11/02cf1a61/ctags-2020-06-11_02cf1a61-x64.zip'
  checksum       = 'AA1E4EF45920F3814AAAB847CD59FD88CCEC5EADCADD3004FB48D9982EF23DCA'
  checksum64     = '61F14DB282D97218947850FA6BEE0B577109DC52A907079CB16C0DB915C1767B'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
