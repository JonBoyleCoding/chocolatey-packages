$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-15/p5.9.20201115.0-15-gcaca347a/ctags-2020-11-15_p5.9.20201115.0-15-gcaca347a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-11-15/p5.9.20201115.0-15-gcaca347a/ctags-2020-11-15_p5.9.20201115.0-15-gcaca347a-x64.zip'
  checksum       = 'AD89C4E94D7079CB3213A3BF61FF04FEB341E14928FBD46D1D2606770CBFED8B'
  checksum64     = '18339FC2826F4AEC2BFB455D4F067516BA604BF668B5247A253E724116FDABE2'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
