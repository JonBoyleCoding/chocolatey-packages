$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-06-14/315c3351/ctags-2020-06-14_315c3351-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-06-14/315c3351/ctags-2020-06-14_315c3351-x64.zip'
  checksum       = 'D218D977CDFC4B4404C8D2D4C5B005D538FBCAF639F5954BC13191F0E5DDEAF9'
  checksum64     = '1DF8A896B3BA94D0C3F9AD14CA9018770AFFA761D1468F6207F201AA38CE48FE'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
