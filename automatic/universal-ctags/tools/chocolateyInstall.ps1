$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-24/p5.9.20201122.0-26-g7b8fb5d0/ctags-2020-11-24_p5.9.20201122.0-26-g7b8fb5d0-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-24/p5.9.20201122.0-26-g7b8fb5d0/ctags-2020-11-24_p5.9.20201122.0-26-g7b8fb5d0-x64.zip'
  checksum       = 'C27EE2FB02BEED27845BAC75F801E71E02C1A43F8A9631CB61CA251E6F836980'
  checksum64     = '5A026756BD9E9CBE55394CA03F125FC93F7DE97B3F449F185B33C0B1F181DB22'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
