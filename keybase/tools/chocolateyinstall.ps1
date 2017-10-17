$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://prerelease.keybase.io/keybase_setup_386.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'Keybase'
  checksum      = '3A88F750544F5EE22927C9230F7D1ACBE95124095E291FF04AC869279F044F7B'
  checksumType  = 'sha256'
  silentArgs    = "/install /quiet"
}

Install-ChocolateyPackage @packageArgs
