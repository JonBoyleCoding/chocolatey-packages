$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-02-15/9c285d38/ctags-2020-02-15_9c285d38-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-02-15/9c285d38/ctags-2020-02-15_9c285d38-x64.zip'
  checksum       = '5B47C7EA995070C77C8DF56F18A327D8AE14D4DF5EFE1B0A56B9AD43A938B564'
  checksum64     = '5F869B60AD3E872975C95E2C2CCEB07778D0A641A210279BEAB5AC599056C6B1'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
