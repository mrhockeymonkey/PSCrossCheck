<#
	.SYNOPSIS
	Writes a new issues to CrossCheck

	.DESCRIPTION
	This function allows you to write new issues using the CrossCheck API. 
	You are required to define a title and a priority, however description is optional
	This function will return with the issue object to allow further operations

	.EXAMPLE
	Write-Issue -Title MyIssue -Priority High

	Create a high priority issue, ommitting a description

	.EXAMPLE
	Write-Issue -Title MyIssue -Priority Medium -Description "Description of MyIssue"

	Create a medium priority issues with a description

#>

Function Write-Issue {
	[CmdletBinding()]
	Param(
		[Parameter(Mandatory)]
		[String]$Title,

		[Parameter(Mandatory)]
		[ValidateSet('High','Medium','Low')]
		[Priority]$Priority,

		[Parameter()]
		[String]$Description
	)

	Try {
		$Issue = [Issue]::CreateIssue($Title, $Priority, $Description)
		Write-Output $Issue
	}
	Catch {
		$PSCmdlet.ThrowTerminatingError($_)
	}

}