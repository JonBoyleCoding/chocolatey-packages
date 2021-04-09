$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-08/p5.9.20210404.0-17-g6f06e29c/ctags-2021-04-08_p5.9.20210404.0-17-g6f06e29c-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-08/p5.9.20210404.0-17-g6f06e29c/ctags-2021-04-08_p5.9.20210404.0-17-g6f06e29c-x64.zip'
  checksum       = 'A4D42F667377D8414F2DDC6C9A515708E6D010848F6942660DF25A44B72D3619'
  checksum64     = '45615E9CEE463B138260D843D0F21819AEA8B2D41C94C895D7EC6036582044E9'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
