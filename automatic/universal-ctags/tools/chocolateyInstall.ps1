$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-09/f43463a2/ctags-2019-10-09_f43463a2-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-09/f43463a2/ctags-2019-10-09_f43463a2-x64.zip'
  checksum       = 'C19CAF5DF1EA08BFF8668EE0ADA10A8F15C877EFD18A7333104D93A716B5A803'
  checksum64     = '892F9B7E5A2CF0402DABF37E2EF217610E17AF429ECCB8958BD1E0F3E206FA43'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
