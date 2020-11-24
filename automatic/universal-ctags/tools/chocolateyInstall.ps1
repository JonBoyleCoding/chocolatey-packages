$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-23/p5.9.20201122.0-9-gbdeb61a1/ctags-2020-11-23_p5.9.20201122.0-9-gbdeb61a1-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-23/p5.9.20201122.0-9-gbdeb61a1/ctags-2020-11-23_p5.9.20201122.0-9-gbdeb61a1-x64.zip'
  checksum       = '656FD5CE5A549D6D93DBBF55DD1E97FF49CC80997A16F8DFFC800FABF7093041'
  checksum64     = 'A835BA5C81C706E31B680533EB0EEFE6DD8CBC8785DD6AD7134365D0AC9BC415'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
