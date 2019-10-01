$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-30/41c5ceb7/ctags-2019-09-30_41c5ceb7-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-09-30/41c5ceb7/ctags-2019-09-30_41c5ceb7-x64.zip'
  checksum       = '46882EE0EF6311E3242813FEAE881826C4CBB1C29E12A62C787118468CAD0D39'
  checksum64     = '7D7520DD6B2124D1999199BE5CEE6602BD68EBE6A33D13926CF78EE36746F635'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
