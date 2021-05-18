$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-17/p5.9.20210516.0-2-g2bb81c87/ctags-2021-05-17_p5.9.20210516.0-2-g2bb81c87-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-17/p5.9.20210516.0-2-g2bb81c87/ctags-2021-05-17_p5.9.20210516.0-2-g2bb81c87-x64.zip'
  checksum       = 'FE43F33337ACECFE9EF2D368D0E3B9EC6D7D8C70C681E591600F7CC35CD32229'
  checksum64     = '0FF39AF6D3FA5F79FDCA19A42937EF3B4746F2AE00EB22DDA87EFA366695549C'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
