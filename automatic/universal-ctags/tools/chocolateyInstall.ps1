$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-18/p5.9.20210214.0-6-g4b543326/ctags-2021-02-18_p5.9.20210214.0-6-g4b543326-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-18/p5.9.20210214.0-6-g4b543326/ctags-2021-02-18_p5.9.20210214.0-6-g4b543326-x64.zip'
  checksum       = '080A58A762C5CFB876F762C8A687A440C29AC6B1B01D9BA046B4474B00070367'
  checksum64     = 'F2DF0ECF7E296D7C2AB68C916B1AF7044D47CB0FE5AE07466E3E249522505E87'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
