$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-10/p5.9.20201206.0-17-g6fd18b87/ctags-2020-12-10_p5.9.20201206.0-17-g6fd18b87-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2020-12-10/p5.9.20201206.0-17-g6fd18b87/ctags-2020-12-10_p5.9.20201206.0-17-g6fd18b87-x64.zip'
  checksum       = '6C06F7DCACF2880B37852FAA6BF1DA7B76DE17278828226368C7D32F9DB47EAD'
  checksum64     = 'F046139362E5188110FFCE6CCE7D776CCC1CCEBCC592B0B04B8F46B61A2CF67A'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
