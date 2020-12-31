$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-30/p5.9.20201227.0-22-g3163a810/ctags-2020-12-30_p5.9.20201227.0-22-g3163a810-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-30/p5.9.20201227.0-22-g3163a810/ctags-2020-12-30_p5.9.20201227.0-22-g3163a810-x64.zip'
  checksum       = '2001ADB6C9957F448B27DF4E2B091E7C6EDB5FCEC33E85F863646F2371F0426A'
  checksum64     = 'E164ED5464782C1462A3D7E806216DA978A7EFDE7F2B6D06E67B17E64798034B'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
