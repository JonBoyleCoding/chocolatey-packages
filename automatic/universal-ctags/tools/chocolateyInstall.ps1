$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-09-09/96237bce/ctags-2020-09-09_96237bce-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-09-09/96237bce/ctags-2020-09-09_96237bce-x64.zip'
  checksum       = 'F4C4D9CABB5025AEE8323E46ABD0820A88DB9F0EF7AF7D54B55C36E67E326815'
  checksum64     = '60473109F11BBDA7181D3AB77144F188ADB3A57E1E579DD3BFC00AA07865BADE'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
