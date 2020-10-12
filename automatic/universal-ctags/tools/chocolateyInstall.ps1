$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-11/952bd1e9/ctags-2020-10-11_952bd1e9-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-11/952bd1e9/ctags-2020-10-11_952bd1e9-x64.zip'
  checksum       = '5A2A39FE2622C45DD5C8FEA13130FFEB8F35E46581CD5D6CA1B60C777F71F64D'
  checksum64     = 'FA8165FDA14622048B37E525242628AFBAA98CF8DCE84E9032D9A3A50D3C886F'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
