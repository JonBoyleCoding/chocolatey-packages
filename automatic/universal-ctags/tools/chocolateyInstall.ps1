$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-13/daec2965/ctags-2019-11-13_daec2965-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-13/daec2965/ctags-2019-11-13_daec2965-x64.zip'
  checksum       = '059D238734F326CB6002B465F4CC93A51207F63133A13A9EE4408C4C8A89A35C'
  checksum64     = '65460F2D26871433FAD6D6B7854D00AB30A91D16DD46075D58E9A9DF601864E0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
