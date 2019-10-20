$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-19/b378166a/ctags-2019-10-19_b378166a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-19/b378166a/ctags-2019-10-19_b378166a-x64.zip'
  checksum       = '7CBCCBD825BF53B045FB7E708B955FF75287565C6D9A22D50ED4B97E094295AD'
  checksum64     = '834256F88A217738C52E9578B8A9ACC876E81CAF6A43EC876E6E6C3DD1E4031D'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
