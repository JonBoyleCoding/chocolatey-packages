$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-16/240af8d2/ctags-2019-11-16_240af8d2-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-16/240af8d2/ctags-2019-11-16_240af8d2-x64.zip'
  checksum       = '2BFA8C9DEAA2FE6F1FFE44CB1B2AC4F9168265EA88CE7D9FBEC289C1291630E4'
  checksum64     = '9DC34C0D51681B04AA0E30AF24F5A409AF5A406159DDDA2FE46B77769FDCB8F4'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
