$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-03-02/a3ea49ff/ctags-2020-03-02_a3ea49ff-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-03-02/a3ea49ff/ctags-2020-03-02_a3ea49ff-x64.zip'
  checksum       = '4BF0F74020A4ABE5C8D15DFEC3CB36935044ABBB035FCEA5230F534498DD62E0'
  checksum64     = 'F0609D0473E8F9CAFF2564EA534E8A829A1FAF6B16632BF92CA9F471CF60F330'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
