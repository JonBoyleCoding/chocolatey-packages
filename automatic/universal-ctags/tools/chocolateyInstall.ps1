$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-14/b43654e5/ctags-2019-03-14_b43654e5-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-14/b43654e5/ctags-2019-03-14_b43654e5-x64.zip'
  checksum       = '1DECD90A23D55AE9D4DED3F8CEF48DD2E5588EFF04BC037CD0782E9562793228'
  checksum64     = '15CEE1DB7E575667E2E2F4852F05D7E11A745931133EB0AA19379E4B5B4CBE67'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
