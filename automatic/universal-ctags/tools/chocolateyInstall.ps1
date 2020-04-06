$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-04-05/e994ac0f/ctags-2020-04-05_e994ac0f-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-04-05/e994ac0f/ctags-2020-04-05_e994ac0f-x64.zip'
  checksum       = '36534E9BA4E1AC8D0BFF3AAD386C7D7043CC27E7090630A6CFFE8135716CE988'
  checksum64     = '10B6F0F8DC80164B345BAA9C8A30F759E3FA16BC43BBD6F61B7C0FE984369E3E'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
