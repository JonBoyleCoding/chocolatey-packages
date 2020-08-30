$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-08-29/b763385f/ctags-2020-08-29_b763385f-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-08-29/b763385f/ctags-2020-08-29_b763385f-x64.zip'
  checksum       = 'B7CF5D9BF659C61ADA94DB6A0AD19DF263F7063BB5FE4D4BBFBE0731459580BB'
  checksum64     = '7F2985EC7C010AE2D0BAB8F35435903BD253EF4AAD0672166FBAA4958485B5B0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
