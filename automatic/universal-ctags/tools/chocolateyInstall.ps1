$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-05-14/91c73c53/ctags-2019-05-14_91c73c53-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-05-14/91c73c53/ctags-2019-05-14_91c73c53-x64.zip'
  checksum       = '1E5014C2FD724C79950568EF4E3E4940F5DD8F49EE9EEBB6636192660968DF6D'
  checksum64     = 'E3CC348126747FD61204FFDAE8B985A3C0EEC7C77A254A419BE94F3F30AD219B'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
