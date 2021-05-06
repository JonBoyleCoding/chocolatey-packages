$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-05/p5.9.20210502.0-82-g80625731/ctags-2021-05-05_p5.9.20210502.0-82-g80625731-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-05-05/p5.9.20210502.0-82-g80625731/ctags-2021-05-05_p5.9.20210502.0-82-g80625731-x64.zip'
  checksum       = '1394BA29969FD9905629C4CBB922EA6D2BD0FE9D8E349644E21E22C42B8F6854'
  checksum64     = '2A226F279B413BF66588D09183B2EAD1718FB05CE19C0C9E16EE505451D4191B'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
