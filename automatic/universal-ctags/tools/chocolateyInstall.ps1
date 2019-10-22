$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-21/ac40afd5/ctags-2019-10-21_ac40afd5-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-21/ac40afd5/ctags-2019-10-21_ac40afd5-x64.zip'
  checksum       = '310D3C7E0C872098E7F45867242C06C9C017D2B9990F135DAB58BAEC646A237C'
  checksum64     = 'D76471390E6D1A000B7DB4AA6BF10FC2C0299CBA41F4207047DCCFCA3DBF71C0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
