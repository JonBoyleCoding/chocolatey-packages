$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-22/p5.9.20210221.0-2-gd36d8436/ctags-2021-02-22_p5.9.20210221.0-2-gd36d8436-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-22/p5.9.20210221.0-2-gd36d8436/ctags-2021-02-22_p5.9.20210221.0-2-gd36d8436-x64.zip'
  checksum       = '8E3131BECDAB1BE0A4E5D7A1370DCD53BAE2843417744F5E23940BAB6AC7F18C'
  checksum64     = '7FBFFA314A055317EB065D6F547871CC8E269BF432A6906C0EDFFCC7A4C24DBB'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
