$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-31/p5.9.20201227.0-26-gdaa6909c/ctags-2020-12-31_p5.9.20201227.0-26-gdaa6909c-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-31/p5.9.20201227.0-26-gdaa6909c/ctags-2020-12-31_p5.9.20201227.0-26-gdaa6909c-x64.zip'
  checksum       = 'E8E9C939B4107D827D854DA5458887B413DCB92808D22B5369E0378198EEB0B5'
  checksum64     = '61ACDC69082F4AAF6C0B7C564E0FF33B0A3CD4D8D9000EA41F6D3FA560B8FEE6'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
