$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-27/93228b8a/ctags-2019-10-27_93228b8a-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-10-27/93228b8a/ctags-2019-10-27_93228b8a-x64.zip'
  checksum       = 'CC066C3F20C6CFBEB1E116C95E99DED6BD24B345488097D6F0B9A511B9654690'
  checksum64     = '7E628AEDB813034CF51FBC07308FEDECA723007D03CBC2694571F3A76E07C4D7'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
