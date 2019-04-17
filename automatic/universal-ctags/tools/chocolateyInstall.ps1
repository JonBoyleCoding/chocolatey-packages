$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-16/90c7aeaa/ctags-2019-04-16_90c7aeaa-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-16/90c7aeaa/ctags-2019-04-16_90c7aeaa-x64.zip'
  checksum       = '6F8399DD3FF83A1FCBD4E86B74CA4FBDA8AC31C6320837F8EC0E498F2E3758F4'
  checksum64     = '81953C45546BBA45B71BF154B3F88CBEBFED24617D86708E51444C811BEABC5D'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
