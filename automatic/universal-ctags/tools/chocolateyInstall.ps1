$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-07/c7f65f31/ctags-2019-10-07_c7f65f31-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-07/c7f65f31/ctags-2019-10-07_c7f65f31-x64.zip'
  checksum       = 'D1FC8A81852240E6954491D6D7E1A1517208DFF421A10E2CFE0BE60B30E6EE3B'
  checksum64     = 'D9F54F1D5252BEB3E1634F53DBFEB5BC32ABDEC17BD64DB53B3A79F80EFB4B54'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
