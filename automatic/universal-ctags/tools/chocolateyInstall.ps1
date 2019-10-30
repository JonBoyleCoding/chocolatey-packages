$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-29/d085a020/ctags-2019-10-29_d085a020-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-29/d085a020/ctags-2019-10-29_d085a020-x64.zip'
  checksum       = 'A7D7FFFC38251B61FE746AAC63DCCC75099A9BE696A7D765758955DC546A5537'
  checksum64     = 'D1325B7E65E3A01CF339670F9284428B463E8397DD134649EA67DDDDF15542D0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
