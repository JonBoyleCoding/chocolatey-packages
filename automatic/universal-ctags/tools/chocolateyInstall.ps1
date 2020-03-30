$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-03-29/e87283aa/ctags-2020-03-29_e87283aa-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-03-29/e87283aa/ctags-2020-03-29_e87283aa-x64.zip'
  checksum       = 'A5FBB9FF9845E9D0C2BB960A1A1C438431BCB9D5F6ED7891B39E94A08E030095'
  checksum64     = 'BE5840284B1B8FC9E2EF96C57374F8A261762E442D05792E47DB38EAB16457AC'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
