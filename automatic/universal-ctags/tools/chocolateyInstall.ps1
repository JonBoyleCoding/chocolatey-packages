$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-03-01/p5.9.20210228.0-8-g56fb788d/ctags-2021-03-01_p5.9.20210228.0-8-g56fb788d-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-03-01/p5.9.20210228.0-8-g56fb788d/ctags-2021-03-01_p5.9.20210228.0-8-g56fb788d-x64.zip'
  checksum       = '68D9DE607F78CA73FD639E7CBA5DB2A63D8C995198C1C555523CE63B26E51274'
  checksum64     = 'BA9CA992EB5060F8245BD6BE9E439F2557C289E427816179D174FBFD269DF740'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
