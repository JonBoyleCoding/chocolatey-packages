$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-15/p5.9.20210110.0-12-g14609424/ctags-2021-01-15_p5.9.20210110.0-12-g14609424-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-01-15/p5.9.20210110.0-12-g14609424/ctags-2021-01-15_p5.9.20210110.0-12-g14609424-x64.zip'
  checksum       = 'CF5C848A5F7760D91E0ADBB645CCAA01D20FED755B714A07D7B26FA9A84536D6'
  checksum64     = 'C3EC325A863C6E4C64420EF3943C463774FC835339338903E55656D08D28E031'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
