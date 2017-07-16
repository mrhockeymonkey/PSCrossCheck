# Remove-Issue

## SYNOPSIS
Remove an issues form CrossCheck

## SYNTAX

```
Remove-Issue [-InputObject] <PSObject>
```

## DESCRIPTION
This function allows you to remove issues via the CrossCheck API
You must first retrieve an instance of type Issue using Get-Issue in order to use this function

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Get-Issue | Where-Object {$_.Title -eq 'MyIsh'} | Remove-Issue
```

Retreive all issues, then filter down to a subset and remove

## PARAMETERS

### -InputObject
{{Fill InputObject Description}}

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

