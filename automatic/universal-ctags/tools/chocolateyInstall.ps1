$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-12/d5bcb52b/ctags-2019-07-12_d5bcb52b-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-12/d5bcb52b/ctags-2019-07-12_d5bcb52b-x64.zip'
  checksum       = 'EFBB2CA1363A1E92A4D73163F6A8412754D95064EF41BF337C6F8A1917D10E4C'
  checksum64     = '5CF1F5B715EDAA727FBA0853A56B589ADBB0674BD2A7F8948F94720967CEEAD1'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
