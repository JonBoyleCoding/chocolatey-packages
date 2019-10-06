$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-05/0bcf43b0/ctags-2019-10-05_0bcf43b0-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-05/0bcf43b0/ctags-2019-10-05_0bcf43b0-x64.zip'
  checksum       = 'CB71E42D8AA32D398C81A4DF1D9593BFD73AB2C6857069F6B54F316FE74DA7CE'
  checksum64     = '757B1E79AF5636A0FB508A26A86355FF2F41EE1572C2494BA58696D72E90E159'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
