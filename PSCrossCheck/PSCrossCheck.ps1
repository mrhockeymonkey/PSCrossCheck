<#
	Classes, Private & Public will be prepended here
#>

$Script:Api = Get-Content -Path $(Join-Path -Path $PSScriptRoot -ChildPath "CrossCheckApi.json") -Raw | ConvertFrom-Json
