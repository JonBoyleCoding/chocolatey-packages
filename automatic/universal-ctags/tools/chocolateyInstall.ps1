$ErrorActionPreference = 'Stop'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'universal-ctags'
  url            = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-14/6a658021/ctags-2019-11-14_6a658021-x86.zip'
  url64Bit       = 'https://github.com/universal-ctags/ctags-win32/releases/download/2019-11-14/6a658021/ctags-2019-11-14_6a658021-x64.zip'
  checksum       = 'C78526FBD63ACBACBFB5BFFC271C1DA3B5C7BE9E6ACE06B0FD869780470B8D3D'
  checksum64     = 'DBEF66595F2872D34CE5097E7A0D62E190C46CD220BE7449B63B42684F67366E'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs
