$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-02/fed91071/ctags-2019-10-02_fed91071-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-02/fed91071/ctags-2019-10-02_fed91071-x64.zip'
  checksum       = 'D90C0BB78FB2300D2B3CF26129F877DF3F6051B5C2BBF0464C69ED0AF53846F7'
  checksum64     = 'A9DCE4C42C39CFF99E5D2C036314BACE2F7729EC49B7CD7E5F038E807D02C033'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
