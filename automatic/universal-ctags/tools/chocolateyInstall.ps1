$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-09/p5.9.20210606.0-4-gf7dce57f/ctags-2021-06-09_p5.9.20210606.0-4-gf7dce57f-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-09/p5.9.20210606.0-4-gf7dce57f/ctags-2021-06-09_p5.9.20210606.0-4-gf7dce57f-x64.zip'
  checksum       = '4B18A6A9069E622D163D8BAC51603448AD83B438D8819D4DEBBEE75548243C2D'
  checksum64     = 'D3E34C42A7D79C6CB997710AECF9CF176E2AB9E9C735F3CC0B69A62863C29944'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
