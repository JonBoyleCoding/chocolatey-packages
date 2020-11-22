$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-21/p5.9.20201115.0-31-g4a9f00a1/ctags-2020-11-21_p5.9.20201115.0-31-g4a9f00a1-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-21/p5.9.20201115.0-31-g4a9f00a1/ctags-2020-11-21_p5.9.20201115.0-31-g4a9f00a1-x64.zip'
  checksum       = '6EE5FAEF5572032C2EEF738BC0EB14BBD691F83796DB37402951802A696913B0'
  checksum64     = '1C9EB7B9FB315780F449D3AF255B32C023A47B2D6DD178712E19979C3D1BEA22'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
