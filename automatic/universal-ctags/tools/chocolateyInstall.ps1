$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-13/94cb70f1/ctags-2019-03-13_94cb70f1-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-13/94cb70f1/ctags-2019-03-13_94cb70f1-x64.zip'
  checksum       = '2228ADFBB3BD3B5C28FB2922C655FA6583F15D748D40B5D23F00563DE324ED6F'
  checksum64     = '7FE623AF000BCA37084A6BA4CCCAE7FE60CDE4165DB2724A9B6F9CB05DCC5239'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
