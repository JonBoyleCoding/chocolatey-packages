$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-01-24/0c4369ec/ctags-2020-01-24_0c4369ec-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-01-24/0c4369ec/ctags-2020-01-24_0c4369ec-x64.zip'
  checksum       = '90D2433CC0CEA265DADB4ADD437FBD5EB704D8EF7969331C6DD88AF44D461113'
  checksum64     = '6448B5A306C74150C0D61FA0F8E67550387DC08C6ADE5E8DDE447C19D2497716'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
