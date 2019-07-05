$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-04/b9bde3d8/ctags-2019-07-04_b9bde3d8-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-04/b9bde3d8/ctags-2019-07-04_b9bde3d8-x64.zip'
  checksum       = '68C26808976816F8FCB909C96A85E61F293C73C9F7D0537CBF4B28D6739D038D'
  checksum64     = '20591A9AE7FC3ADA3DB261301F8A13F0EB22CF6133B95BEDA6A15B979A4F6B80'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
