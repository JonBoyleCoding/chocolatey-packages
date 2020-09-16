$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-09-15/23d50b5d/ctags-2020-09-15_23d50b5d-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-09-15/23d50b5d/ctags-2020-09-15_23d50b5d-x64.zip'
  checksum       = '89329561EDE2B9D96FF7C039554EA2230BFB078308E4C2AE78C92FDD66C06587'
  checksum64     = 'E375305904637E57826AFFE8D7EE388CE64F4D93876F2AB6D6C6265721AA4800'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
