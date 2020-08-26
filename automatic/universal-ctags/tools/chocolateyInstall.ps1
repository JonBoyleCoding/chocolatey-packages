$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-08-25/c9ebd839/ctags-2020-08-25_c9ebd839-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-08-25/c9ebd839/ctags-2020-08-25_c9ebd839-x64.zip'
  checksum       = '6B59250A880A36901BF73A7532B74433B7B114E5775790F90AD66F7CC39F493F'
  checksum64     = '5CDAC6285E452DEF7C2E3F4AFC60D7154ABAE65F4B61195163D9B36045BF0C65'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
