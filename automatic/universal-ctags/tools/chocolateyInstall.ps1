$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-31/95975bd1/ctags-2019-03-31_95975bd1-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-31/95975bd1/ctags-2019-03-31_95975bd1-x64.zip'
  checksum       = 'E4032B68C43F9673A0017D34CC82C5FF5B4082D8D2C22AA2FA6A13439E94720D'
  checksum64     = '9638DF954F933FAA2C97EC3CD640CA2C1D0DA0500B2465D69C5DE56667C6F7DC'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
