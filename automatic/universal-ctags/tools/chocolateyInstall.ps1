$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-15/p5.9.20210613.0-6-gfb997575/ctags-2021-06-15_p5.9.20210613.0-6-gfb997575-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-06-15/p5.9.20210613.0-6-gfb997575/ctags-2021-06-15_p5.9.20210613.0-6-gfb997575-x64.zip'
  checksum       = 'E76E21A7BABACB4E2D8F027F1F2EE7858C5347332813867C1F3055FA2A920D43'
  checksum64     = '0DECE764C59EBE8196E1A72FA02A1F440379DCD942D7E396888EF3F89CC208DE'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
