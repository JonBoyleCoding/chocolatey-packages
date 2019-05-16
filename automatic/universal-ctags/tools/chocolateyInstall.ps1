$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-05-15/c8405bea/ctags-2019-05-15_c8405bea-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-05-15/c8405bea/ctags-2019-05-15_c8405bea-x64.zip'
  checksum       = 'A8FF5993E2224F94D0B266F84CBAC9C19BB0BC8F9D389964FA7FC1121EB980A9'
  checksum64     = '2CDB522081A373F069F5EEA9356E44BD77DFFD0E96DFECF974E902184BFE5CEC'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
