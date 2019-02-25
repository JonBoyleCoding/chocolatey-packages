$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-02-24/0e5cfa3f/ctags-2019-02-24_0e5cfa3f-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-02-24/0e5cfa3f/ctags-2019-02-24_0e5cfa3f-x64.zip'
  checksum       = '1E8C65B464A126EFFFE88256DC315EB23926995C6F9022E1C56BB3D064C6E7B5'
  checksum64     = '874E1BAA15EFAA2E1DDE99E6E026D83289714022EEB0D7D661DFA93F5FA9F01F'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
