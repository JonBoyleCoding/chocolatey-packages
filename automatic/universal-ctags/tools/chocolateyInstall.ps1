$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-06/9ce35430/ctags-2020-10-06_9ce35430-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-06/9ce35430/ctags-2020-10-06_9ce35430-x64.zip'
  checksum       = '5E95B8404AD47B4BCABEE7779138E77B327EFE72FF5D78CD11E692DC54C05F81'
  checksum64     = '990A1AD8DFE80B76B7AFECE5D765E156A798FFFA1F74EE71ADC0AFA3062E749D'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
