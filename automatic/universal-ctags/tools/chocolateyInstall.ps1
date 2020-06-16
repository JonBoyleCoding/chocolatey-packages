$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-06-15/62f01448/ctags-2020-06-15_62f01448-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-06-15/62f01448/ctags-2020-06-15_62f01448-x64.zip'
  checksum       = '500DFEC5E86D0F6ED349AE5D9864B6F55CFA3B19D843A43A027E44C42BF4C2D0'
  checksum64     = '16A8B3DFE4F2A432D51115812E4D5E7C42CBE8C4D22465F6133C23925C2AF449'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
