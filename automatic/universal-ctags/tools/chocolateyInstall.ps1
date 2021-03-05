$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-03-04/p5.9.20210228.0-13-g00712824/ctags-2021-03-04_p5.9.20210228.0-13-g00712824-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-03-04/p5.9.20210228.0-13-g00712824/ctags-2021-03-04_p5.9.20210228.0-13-g00712824-x64.zip'
  checksum       = 'EA3DBE390622FC51D46F2EA1E728F3F6008590D937CBCECD6A8452113555CBE6'
  checksum64     = '4A10BB6DC430C5204E6E07929E7C065AAA591EF0F0A4F5F5A53599A0EF16D000'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
