$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-30/f6c7064a/ctags-2020-05-30_f6c7064a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-30/f6c7064a/ctags-2020-05-30_f6c7064a-x64.zip'
  checksum       = 'CD22CCC91FBDDF625D4DA1AE4B5E247A4DA6C5EA6973744D54D61FDF1E7B39DC'
  checksum64     = '50A9A276EFD1646CF04F42CB7C9350F6C45F0D96FE59D4014C332F5643984326'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
