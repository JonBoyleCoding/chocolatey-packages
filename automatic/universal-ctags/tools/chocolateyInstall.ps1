$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-09/p5.9.20210207.0-3-gee5f9c55/ctags-2021-02-09_p5.9.20210207.0-3-gee5f9c55-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-09/p5.9.20210207.0-3-gee5f9c55/ctags-2021-02-09_p5.9.20210207.0-3-gee5f9c55-x64.zip'
  checksum       = '28322316E3F4BDF708EC89BEF186F16DE846F5F3C68B7AC93032A915EB3B7089'
  checksum64     = '831C8BBB168F2BC834773790712F9C287E10BFF90B7E6C2A32E585EDA2407DAB'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
