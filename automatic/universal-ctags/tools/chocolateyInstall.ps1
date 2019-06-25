$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-24/2b0aa59c/ctags-2019-06-24_2b0aa59c-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-06-24/2b0aa59c/ctags-2019-06-24_2b0aa59c-x64.zip'
  checksum       = '9E2B6F9BB17558E342C3F0F60F7224A5FF21E1ED63454BAEEB79A8BD479B4184'
  checksum64     = 'C5DD9CC33FE63977FA14F6AB05B760BE7E1671FA526714834553E899410187C0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
