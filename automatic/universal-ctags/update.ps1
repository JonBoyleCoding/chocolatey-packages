import-module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://github.com/universal-ctags/ctags-win32/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"          = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"     = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
            "(?i)(^\s*packageName\s*=\s*)('.*')"  = "`$1'$($Latest.PackageName)'"
        }

        "$($Latest.PackageName).nuspec" = @{
            "(\<releaseNotes\>).*?(\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
        }

        ".\legal\VERIFICATION.txt" = @{
          "(?i)(\s+x32:).*"            = "`${1} $($Latest.URL32)"
          "(?i)(\s+x64:).*"            = "`${1} $($Latest.URL64)"
          "(?i)(checksum32:).*"        = "`${1} $($Latest.Checksum32)"
          "(?i)(checksum64:).*"        = "`${1} $($Latest.Checksum64)"
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge }

function global:au_GetLatest {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re    = '\.zip$'
    $url   = $download_page.links | ? href -match $re | % href | select -Skip 3 -First 1
    $url64 = $download_page.links | ? href -match $re | % href | select -Skip 1 -First 1 

    $version = $url64 -split "/" | select -Skip 5 -First 1
    $version = $version -split "%" | select -First 1
    $version = $version -replace "-", "."

    $github = "https://github.com"
    $url = $github + $url
    $url64 = $github + $url64

    @{
        Version      = $version
        URL32        = $url
        URL64        = $url64
        ReleaseNotes = ''
    }
}

update -ChecksumFor all
