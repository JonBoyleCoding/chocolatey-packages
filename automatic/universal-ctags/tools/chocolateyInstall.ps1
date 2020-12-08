$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-07/p5.9.20201206.0-4-g69df9dce/ctags-2020-12-07_p5.9.20201206.0-4-g69df9dce-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-07/p5.9.20201206.0-4-g69df9dce/ctags-2020-12-07_p5.9.20201206.0-4-g69df9dce-x64.zip'
  checksum       = '45EE0DE1DF15E7B890E9CE7DFA76B13A76E29CCF78911E51AD42B89F0E9B74F4'
  checksum64     = '2B675E51C31678812E2578603B38D543C825658D4AA91E58619A17FEFB5DC07F'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
