$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-25/07b54be2/ctags-2019-03-25_07b54be2-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-03-25/07b54be2/ctags-2019-03-25_07b54be2-x64.zip'
  checksum       = 'B4B40DA2EF7DFE3DBA0A5BC6BEC34977E9603A34913234A7C4E4D40D55EBEBC1'
  checksum64     = '1F991316E9338EAB705F9980FA1E36AA5540D0AC26565F08BEEF2212302F79B0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
