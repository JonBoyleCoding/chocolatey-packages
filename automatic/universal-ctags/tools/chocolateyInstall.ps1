$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-08/6365358b/ctags-2019-03-08_6365358b-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-08/6365358b/ctags-2019-03-08_6365358b-x64.zip'
  checksum       = 'D7E5721824EDDEF0828FFFEDC947F13368CEFAA43303477D1ABD35495496AF59'
  checksum64     = 'FA7D5F1DADFD14C2B6AF600BF25AC9655B6E80F4488F0083F4C2EC65E72DACCD'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
