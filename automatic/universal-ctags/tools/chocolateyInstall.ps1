$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-13/61cc66cf/ctags-2019-04-13_61cc66cf-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-13/61cc66cf/ctags-2019-04-13_61cc66cf-x64.zip'
  checksum       = '22532C195A369E6F441845BA0BD8B7E4D9B626A2A418019B8DC207A85764D0BE'
  checksum64     = '318EB8F1B1802AFF343E207E931C28D9AA025CEF2DE2F86F580B846329B0BC50'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
