$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-03-11/951ddd7f/ctags-2020-03-11_951ddd7f-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-03-11/951ddd7f/ctags-2020-03-11_951ddd7f-x64.zip'
  checksum       = '2C26DD0F7AC30CB86D53D3E2C7FDBCBDBAC3D5AFA4DFEE3C49B7B8592A72D505'
  checksum64     = '33D422D9315D3AB3117BA3031BB20018F367BF5689165EA3AE294061B61BC962'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
