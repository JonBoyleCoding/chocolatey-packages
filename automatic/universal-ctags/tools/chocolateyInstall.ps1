$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-02/e3505ad7/ctags-2019-11-02_e3505ad7-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-02/e3505ad7/ctags-2019-11-02_e3505ad7-x64.zip'
  checksum       = 'B7097385C9A96724779E908CA9C1924DC8C1BFF8585CE97CC53B7100A2BE7D0B'
  checksum64     = 'A08EA49B18ED8DEE8C03D967049528C83BBBFC902C7E93A5AC2FA754A43D100D'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
