$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-03-09/6b6abbf2/ctags-2020-03-09_6b6abbf2-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-03-09/6b6abbf2/ctags-2020-03-09_6b6abbf2-x64.zip'
  checksum       = '1B1AF4BCD134B980367B5136BC9C218C05233CD603FB532DC4A624710C2648FB'
  checksum64     = 'E0261BA6DEB029C7731E4FCD05BF519A02EA32B276078C780B4143E97B460501'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
