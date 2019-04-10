$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-09/4aed4f00/ctags-2019-04-09_4aed4f00-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-04-09/4aed4f00/ctags-2019-04-09_4aed4f00-x64.zip'
  checksum       = 'D36242E260AEA63942575423F40EFFE4E588F87A63354B64B60D04FEFCB011AE'
  checksum64     = '26087E36E2010BC983CE61DDB92CABDD89ADF40C8ABD7CB689FDEFD29CD5EC35'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
