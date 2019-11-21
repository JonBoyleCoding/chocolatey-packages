$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-20/a7e472d0/ctags-2019-11-20_a7e472d0-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-20/a7e472d0/ctags-2019-11-20_a7e472d0-x64.zip'
  checksum       = '24FF3199F27F8E830C4FD67897CD5B0E46F01A9982A2F40D764A099D1FC03197'
  checksum64     = '7BBB1C8B76FA3B3AEE46C051FC67617806A946324DF09D313C099A6258872259'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
