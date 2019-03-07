$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-06/6cecfb9c/ctags-2019-03-06_6cecfb9c-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-06/6cecfb9c/ctags-2019-03-06_6cecfb9c-x64.zip'
  checksum       = '3543878F7078FE01488CC771F7A6BA106985E82CC103F65E8A95C149C493E921'
  checksum64     = '7F2749F67011E9BCA3600D541ACCDFCCD109278DC8A8A4BAF66F3504606C8681'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
