$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-07/4787b611/ctags-2019-07-07_4787b611-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-07/4787b611/ctags-2019-07-07_4787b611-x64.zip'
  checksum       = '81C1D98536DFAC4DBA2ED8182633B657C9F12255AE6D61BA28AC425ED74013F3'
  checksum64     = '1DDA2AB268FEF5856489F2F48E38501E78A66BFB9278DC6BDAD19E9BF3C22350'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
