$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-08/80209df8/ctags-2019-10-08_80209df8-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-08/80209df8/ctags-2019-10-08_80209df8-x64.zip'
  checksum       = '2E5ECB626A38E166ED18E7071CC9D9756579B63E5743398F80580BC610A89D55'
  checksum64     = '2C0D4DBE700865605F10D6C40227771A37EA36FAE11DE1EBF54CFAB3702447B6'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
