$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-11/d28e10d1/ctags-2020-05-11_d28e10d1-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-05-11/d28e10d1/ctags-2020-05-11_d28e10d1-x64.zip'
  checksum       = '3F3E6B1152A2806DC9B8D7C4F848FD27B32F887319833E5D290ACADB0A7E468A'
  checksum64     = '34F275CF34622753BD4D92EC923ED5222ACCD9116DD716A9458CA7F8944A0C82'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
