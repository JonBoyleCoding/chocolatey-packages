$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-12/p5.9.20201011.0-12-g01b9fc86/ctags-2020-10-12_p5.9.20201011.0-12-g01b9fc86-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-10-12/p5.9.20201011.0-12-g01b9fc86/ctags-2020-10-12_p5.9.20201011.0-12-g01b9fc86-x64.zip'
  checksum       = '114D0A2F5C7A2040E77FAA4BFECA496E4C27F80A1F916C32C5FFE5C2E5D0AE00'
  checksum64     = '9FF16E820E308D0DF5D2C6549F6ED45A6552CF85CAE383D88BCC0F894EE679FA'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
