$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-15/e6abbc9a/ctags-2019-03-15_e6abbc9a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-15/e6abbc9a/ctags-2019-03-15_e6abbc9a-x64.zip'
  checksum       = '484BB6328CB2BE79EF1C2D897C93CE4D0A0D99083213F4E14A8BA788701694C6'
  checksum64     = 'D8F974A9185DC7B20A4CE952620AD983C8109BDC7E53EC46FC3B1282B5948F09'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
