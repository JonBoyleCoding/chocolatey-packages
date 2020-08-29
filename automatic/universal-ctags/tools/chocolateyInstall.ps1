$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-08-28/6ca23b58/ctags-2020-08-28_6ca23b58-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-08-28/6ca23b58/ctags-2020-08-28_6ca23b58-x64.zip'
  checksum       = 'CF66169F5A2A25F4D07EF1BF859085110F5607D9F70FCED648BEB0894D7D634E'
  checksum64     = '1EC838470EA23DEC4CAC57ADF58CA489E37A45571E37A94F89F429252A301F4F'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
