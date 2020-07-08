$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-07/b4574f0a/ctags-2020-07-07_b4574f0a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-07-07/b4574f0a/ctags-2020-07-07_b4574f0a-x64.zip'
  checksum       = '9DBAA3D1746959CABE344C35D3B95A7E55D6E875CF94BE43C0A5A6F436AEFD76'
  checksum64     = '6CABA85CAAA4AE770E3FF89871D87BA0C8FC1F38B5998A83B35D149406AEF80D'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
