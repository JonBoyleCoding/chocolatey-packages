$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-04/0f26d9a7/ctags-2019-03-04_0f26d9a7-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-04/0f26d9a7/ctags-2019-03-04_0f26d9a7-x64.zip'
  checksum       = 'FF977A05AD33327D9C9B8D6FC00FA8918093F97F963EF7F17C7D9F6FA0C2945C'
  checksum64     = '0993FBB89BF295CBF8C1B9F8742B4BAA6FE775E9F869E5D30D0ECAAC7182E7D6'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
