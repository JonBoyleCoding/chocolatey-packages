$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-28/p5.9.20210228.0-3-g10ce0d23/ctags-2021-02-28_p5.9.20210228.0-3-g10ce0d23-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-28/p5.9.20210228.0-3-g10ce0d23/ctags-2021-02-28_p5.9.20210228.0-3-g10ce0d23-x64.zip'
  checksum       = '5E57C81B1C01FA0165F93542B0F7C12AB867917D94995FB65629B32FCEB7A45B'
  checksum64     = '7AF8B1E4D4AD2FF18E3BE3A4841CF936C5E6C3CDC8E022B002409A4A2260A8A5'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
