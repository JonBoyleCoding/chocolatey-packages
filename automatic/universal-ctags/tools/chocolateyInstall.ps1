$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-04-15/1e37c132/ctags-2020-04-15_1e37c132-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-04-15/1e37c132/ctags-2020-04-15_1e37c132-x64.zip'
  checksum       = '4DB84F29277666526F403CE2EDF3F4CA336393F3D48321B65741B8E000D84864'
  checksum64     = '13E3A640C7601490455FC69E9C8F5602E3FCE6EAD2C947975899F426397CC8B5'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
