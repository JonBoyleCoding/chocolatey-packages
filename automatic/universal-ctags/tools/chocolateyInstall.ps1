$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-26/062b562e/ctags-2020-05-26_062b562e-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-26/062b562e/ctags-2020-05-26_062b562e-x64.zip'
  checksum       = '24F73BD227F880D36B299AF7FD24D546B217949655AC28C3E70F84319DD9BAE8'
  checksum64     = 'D50508C7A87915421FEA3B41B8E8FBA119A2DCB9AB0B0D391F80C070461A135B'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
