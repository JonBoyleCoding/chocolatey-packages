$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-15/p5.9.20210411.0-5-gbfc40942/ctags-2021-04-15_p5.9.20210411.0-5-gbfc40942-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-15/p5.9.20210411.0-5-gbfc40942/ctags-2021-04-15_p5.9.20210411.0-5-gbfc40942-x64.zip'
  checksum       = '6E8AA4B6145E02D5F3A37A03DFB2868BD77860B24D74DAF6C2A198515D264148'
  checksum64     = 'A30689838C5376FC14D7837326D749B947ABB093C0252A7E988AD8F4BA7E646C'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
