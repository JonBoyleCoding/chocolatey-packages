$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-12/6adbc592/ctags-2019-09-12_6adbc592-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-12/6adbc592/ctags-2019-09-12_6adbc592-x64.zip'
  checksum       = '2422F386F2B1239DDD165D92CEB39B7488E76C2907F418DC418D209EF1C93EB4'
  checksum64     = 'F2650431D583E6F3785C9E669F1A1BC4B559DB809CCC1AA894BF501684C36C0F'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
