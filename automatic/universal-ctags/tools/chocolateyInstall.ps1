$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-04/p5.9.20210502.0-75-gbd44a467/ctags-2021-05-04_p5.9.20210502.0-75-gbd44a467-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-04/p5.9.20210502.0-75-gbd44a467/ctags-2021-05-04_p5.9.20210502.0-75-gbd44a467-x64.zip'
  checksum       = '8BED0C34DD9D6A8D4B7FD5D7ED371DBBB334D36AC1C9A53A26EDD71701CB6DE3'
  checksum64     = '252D47DD9D0353746DCCBA8D201CD76C2587E18B847E47F007E7141B4FCE7FA2'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
