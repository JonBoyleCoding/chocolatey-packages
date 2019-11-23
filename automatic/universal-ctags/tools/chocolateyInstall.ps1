$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-22/b11d3931/ctags-2019-11-22_b11d3931-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-22/b11d3931/ctags-2019-11-22_b11d3931-x64.zip'
  checksum       = 'ED929EABA271A2FAF2508C3BB47300CFC60FAB2DA75BC56F8F4B1CBB20F67FA6'
  checksum64     = '3588AF0465F491E9E9C2CF8164E1E1A22036472BCF90A07E3FC285DCBF5F1F5C'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
