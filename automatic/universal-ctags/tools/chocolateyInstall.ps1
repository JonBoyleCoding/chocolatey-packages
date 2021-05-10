$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-09/p5.9.20210509.0-6-gd5df0d8a/ctags-2021-05-09_p5.9.20210509.0-6-gd5df0d8a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-09/p5.9.20210509.0-6-gd5df0d8a/ctags-2021-05-09_p5.9.20210509.0-6-gd5df0d8a-x64.zip'
  checksum       = '404995808C360F80EB211242C27FED1C5D4C1B394D87C184C9418C4E29CAD50E'
  checksum64     = '4C4E4AB77AF62A3CE7FC7605D7127737A44133C75F527F83BBC42555B688EF8C'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
