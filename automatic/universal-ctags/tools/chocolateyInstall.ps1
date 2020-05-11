$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-10/6fe3731f/ctags-2020-05-10_6fe3731f-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-10/6fe3731f/ctags-2020-05-10_6fe3731f-x64.zip'
  checksum       = '77FD707BB8A2B459F7FE9437CB11B36C8E1B11DB0D2C01384336803F4080619D'
  checksum64     = '1060D8C14A97EE3066C419D0EAA8A110DED0F2570AC655CD42D7906A2A3F43A4'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
