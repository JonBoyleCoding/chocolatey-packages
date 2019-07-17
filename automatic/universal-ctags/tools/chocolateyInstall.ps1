$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-16/71525fe9/ctags-2019-07-16_71525fe9-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-07-16/71525fe9/ctags-2019-07-16_71525fe9-x64.zip'
  checksum       = '6EEC6A2B502C88280F92C6DCA64E5BA36FD6F67D8BD3928CFAF60780F4DE5482'
  checksum64     = '64D2E37C1CBAD45DA44428785C9B00E4D6A8E7DA49F3BB1E941B4E4B0BA91D5C'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
