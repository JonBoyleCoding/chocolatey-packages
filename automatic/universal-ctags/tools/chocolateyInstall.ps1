$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-07/e852ee0e/ctags-2020-10-07_e852ee0e-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-07/e852ee0e/ctags-2020-10-07_e852ee0e-x64.zip'
  checksum       = 'D48CB189AA0A70A7E4095FED365692757C8725ADE1769B5803D43FCC44F63A29'
  checksum64     = 'FD1B2D0CA7F751661A2987D276C403D8F13C1C1870BADE1BC1500EB80B628EB0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
