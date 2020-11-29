$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-28/p5.9.20201122.0-69-g7f84a443/ctags-2020-11-28_p5.9.20201122.0-69-g7f84a443-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-28/p5.9.20201122.0-69-g7f84a443/ctags-2020-11-28_p5.9.20201122.0-69-g7f84a443-x64.zip'
  checksum       = '787BDF4B3246874B87932A4B3BC329C49D97C70A00525B1FBC26334AC3913FC7'
  checksum64     = 'D19C54D9E04EC83B8B8656721C98B019D243E6F7F29DE27D1FD63EA075ABAD74'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
