$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-10/9f494f08/ctags-2019-12-10_9f494f08-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-12-10/9f494f08/ctags-2019-12-10_9f494f08-x64.zip'
  checksum       = '15F80B2CB807228A4D0ECF5B0225E50B87AFC36CD9652E93925C080A1664AC98'
  checksum64     = '7E337768EEB0649EDD0C8BE2E6F142C44BA85BD17A09197B30B6BB1000A764C6'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
