$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-16/126781c6/ctags-2019-09-16_126781c6-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-16/126781c6/ctags-2019-09-16_126781c6-x64.zip'
  checksum       = '81EB69C149252887B06AFBAC1FB456355A2A695C5A574129B7028017B0AA8B20'
  checksum64     = 'EAE91C772BDA580E0E9DE3CFFD2E831DE57ECAD62CC2814B8FA50553269DC16B'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
