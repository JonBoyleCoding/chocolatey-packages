$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-23/f06928e3/ctags-2019-06-23_f06928e3-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-23/f06928e3/ctags-2019-06-23_f06928e3-x64.zip'
  checksum       = '67A946FEEB7574AE188CF012611738919FFA3F3419D251F11CA9BF9413B1E56B'
  checksum64     = 'B9F3EF833CB09BF608D2EF0EA3C49DDC62C9AE2BA154715B04ABCB62256DDA3A'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
