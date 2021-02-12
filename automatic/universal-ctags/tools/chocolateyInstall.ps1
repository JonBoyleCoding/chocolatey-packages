$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-11/p5.9.20210207.0-73-g27521f5e/ctags-2021-02-11_p5.9.20210207.0-73-g27521f5e-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-02-11/p5.9.20210207.0-73-g27521f5e/ctags-2021-02-11_p5.9.20210207.0-73-g27521f5e-x64.zip'
  checksum       = '53B63E414DB2A34F477F58DAFE5A9BCD64F872E2F67F2674F33A95D4E806459F'
  checksum64     = '2CE68D41F36A9EC1CEB662714AA91A24FF582EFEBB178542343A7364D310564A'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
