$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-10/435bffb9/ctags-2019-03-10_435bffb9-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-10/435bffb9/ctags-2019-03-10_435bffb9-x64.zip'
  checksum       = '8ED8582A4D6D591AA3F45F2764365A443626DBE387E09A369544B78CB4104BBD'
  checksum64     = 'ABB543C06C1EC18D10CD0796FA0D07D90820CC472F517DED90A7C489CF5C361D'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
