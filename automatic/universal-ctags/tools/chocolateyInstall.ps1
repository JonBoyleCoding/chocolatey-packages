$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-08/be621aec/ctags-2019-11-08_be621aec-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-08/be621aec/ctags-2019-11-08_be621aec-x64.zip'
  checksum       = '0F8F839F9F8A07A7CE26DDC0A097DA158A9465231CA73AAFB6AA2758C960A40E'
  checksum64     = '7F22C4C05E9076CB5188E026DFDE1CF42580BB3B34DD7619DF8BD6114CE34F28'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
