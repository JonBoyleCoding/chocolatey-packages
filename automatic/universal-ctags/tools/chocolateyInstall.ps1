$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-01-12/feffe43a/ctags-2020-01-12_feffe43a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-01-12/feffe43a/ctags-2020-01-12_feffe43a-x64.zip'
  checksum       = '99AFFACB360CEC7F5B0B321E23C4459B4458BD60C612A9DBB10630064C99635D'
  checksum64     = 'AB43CD1D402E5F64DD4581967132C1F4F04DA37C056BE30DEFB81509FBFFEDC9'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
