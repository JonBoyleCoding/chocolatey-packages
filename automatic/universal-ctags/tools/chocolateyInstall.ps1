$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-30/bc95dc9a/ctags-2019-11-30_bc95dc9a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-30/bc95dc9a/ctags-2019-11-30_bc95dc9a-x64.zip'
  checksum       = '5E4C3E9954CB2CF1AE635B43AA51110892D8BCC63FEE7660033A8941751F871A'
  checksum64     = 'EF3C4B82F581595FBD829AA0078D1FB621A94ACAFAB6DC6913B1B5230F03A8F7'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
