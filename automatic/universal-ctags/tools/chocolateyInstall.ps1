$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-27/p5.9.20210425.0-20-gee7b9c12/ctags-2021-04-27_p5.9.20210425.0-20-gee7b9c12-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2021-04-27/p5.9.20210425.0-20-gee7b9c12/ctags-2021-04-27_p5.9.20210425.0-20-gee7b9c12-x64.zip'
  checksum       = 'A34D4AF48A474151E10BA9B22162929CB7E5F9CE17A464C3193441E3DC210E0B'
  checksum64     = '56649C514BCAE6AA24CF3C37D40E8EC4322B59059A50C5497B28E7470ED025C9'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
