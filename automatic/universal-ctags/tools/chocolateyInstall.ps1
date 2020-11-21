$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-20/p5.9.20201115.0-23-gf2245092/ctags-2020-11-20_p5.9.20201115.0-23-gf2245092-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-20/p5.9.20201115.0-23-gf2245092/ctags-2020-11-20_p5.9.20201115.0-23-gf2245092-x64.zip'
  checksum       = '58FA7B86F49C5D94613B49CF9AC490CC1C2DADEE47973526278F0499A368119F'
  checksum64     = '4D9F6DA75BE415E4BA38D69EDDBF566E528D3131B8FBAC4F5EB936CAAEF6AB73'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
