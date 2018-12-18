Param(
  [string] $maestroEndpoint="https://maestro-prod.westus2.cloudapp.azure.com/",
  [string] $barToken
)

$ErrorActionPreference = 'SilentlyContinue'

$errors = @()
& ..\common\darc-init.ps1 -ErrorVariable $errors

$darcPasswordArg = "-p $barToken"
$testsChannelName = "validate-darc"

darc add-channel -n $testsChannelName $darcPasswordArg
darc delete-channel -n $testsChannelName $darcPasswordArg