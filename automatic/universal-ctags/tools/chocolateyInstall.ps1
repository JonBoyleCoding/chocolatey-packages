$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-18/c9b23624/ctags-2019-10-18_c9b23624-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-18/c9b23624/ctags-2019-10-18_c9b23624-x64.zip'
  checksum       = 'D7E4F8414CAAE2E0007D72096E2FE4EFE13288245B535650511B0EAED9DFC81B'
  checksum64     = '63A40ECA42F3BDE1B3897F3C49298B7DD8151E801D7E126FF2C9327AFD4EB5DB'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
