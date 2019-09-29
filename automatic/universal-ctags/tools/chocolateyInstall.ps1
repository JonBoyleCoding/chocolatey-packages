$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-28/650818b5/ctags-2019-09-28_650818b5-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-28/650818b5/ctags-2019-09-28_650818b5-x64.zip'
  checksum       = '59318C8D46FB990CA905F7F215B97801B4FB8E6A7DB823B49CBAC9B3BEBBA954'
  checksum64     = 'DC41C89C25162B41B58686336CAFE45F10F7F6312FCD169B316BE10F792E6761'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
