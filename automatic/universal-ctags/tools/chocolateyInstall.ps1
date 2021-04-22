$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-21/p5.9.20210418.0-6-g6df549ab/ctags-2021-04-21_p5.9.20210418.0-6-g6df549ab-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-21/p5.9.20210418.0-6-g6df549ab/ctags-2021-04-21_p5.9.20210418.0-6-g6df549ab-x64.zip'
  checksum       = 'B99A0955E67870B6D08BE04E641FCF1259EA184188727FB6BA2D070F4E707057'
  checksum64     = 'E4900C4B00696800EB8C0C16B87F3F800EFE6AA27E20DD8F5B17D6920638215C'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
