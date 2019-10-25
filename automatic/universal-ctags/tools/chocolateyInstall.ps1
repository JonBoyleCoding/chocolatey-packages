$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-24/1d5736ad/ctags-2019-10-24_1d5736ad-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-24/1d5736ad/ctags-2019-10-24_1d5736ad-x64.zip'
  checksum       = '4D4C7D6A2437CB21F462DCA4B7E218ECD8A239E1512A0BF3E34E5AEA128D9C64'
  checksum64     = '111378A8EE8F71D858EA47177B5F2977E9A408144AC28495326E6DD903402821'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
