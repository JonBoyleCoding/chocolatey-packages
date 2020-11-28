$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-27/p5.9.20201122.0-64-ge1acc8d0/ctags-2020-11-27_p5.9.20201122.0-64-ge1acc8d0-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-27/p5.9.20201122.0-64-ge1acc8d0/ctags-2020-11-27_p5.9.20201122.0-64-ge1acc8d0-x64.zip'
  checksum       = 'F0FCE4C0BAB00FF814E838E3EBD7FC3FA714FAFC57E1BFDE2C034E1EC4CD8857'
  checksum64     = 'B4628303B37DB368FD5ECF35ABCB82E7EA56B2115815957759F3C1EEA1D2F61A'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
