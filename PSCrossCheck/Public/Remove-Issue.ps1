<#
    .SYNOPSIS
    Remove an issues form CrossCheck

    .DESCRIPTION
    This function allows you to remove issues via the CrossCheck API
    You must first retrieve an instance of type Issue using Get-Issue in order to use this function

    .EXAMPLE
    Get-Issue | Where-Object {$_.Title -eq 'MyIsh'} | Remove-Issue

    Retreive all issues, then filter down to a subset and remove
#>

Function Remove-Issue {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory, ValueFromPipeline)]
        [PSObject]$InputObject
    )

    Begin {}

    Process {
        Write-Verbose "Removing: Issue $($_.Id)"
        $_.Delete()
    }

    End {}
}