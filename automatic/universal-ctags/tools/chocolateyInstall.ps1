$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-25/p5.9.20201220.0-15-g7c63e8cc/ctags-2020-12-25_p5.9.20201220.0-15-g7c63e8cc-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-25/p5.9.20201220.0-15-g7c63e8cc/ctags-2020-12-25_p5.9.20201220.0-15-g7c63e8cc-x64.zip'
  checksum       = '84822090DFDAC81D28D12359FAA6209CA5AA2F649F824C9DAFDF1183DE855166'
  checksum64     = '0AC2F1065123FEBEFCEF74F23D38E93E08D0E70B050C4FF271F6B122E6F0EC4F'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
