# Input bindings are passed in via param block.
param($Timer)

# Get the current universal time in the default string format
$currentUTCtime = (Get-Date).ToUniversalTime()

# The 'IsPastDue' porperty is 'true' when the current function invocation is later than scheduled.
if ($Timer.IsPastDue) {
    Write-Host "PowerShell timer is running late!"
}

# Write an information log with the current time.
Write-Host "PowerShell timer trigger function ran! TIME: $currentUTCtime"

if (-not (Get-Command -Module 'Az.ResourceGraph' -CommandType 'Cmdlet'))
{
    Write-Output "(In Func) Module 'Az.ResourceGraph' not found, installing right now..."
    Install-Module -Name Az.ResourceGraph -Scope CurrentUser -Force
}
else {
    Write-Output "(In Func) You are all set."
}

$expResources= Search-AzGraph -Query 'where todatetime(tags.expireOn) < now() | project id'

foreach ($r in $expResources) {
    Write-Host "Expired Resource ID=" + $r.id
    Remove-AzResource -ResourceId $r.id -Force -WhatIf
}

$rgs = Get-AzResourceGroup;
 
foreach($resourceGroup in $rgs){
    $name=  $resourceGroup.ResourceGroupName;
    $count = (Get-AzResource | Where-Object{ $_.ResourceGroupName -match $name }).Count;
    if($count -eq 0){
        Write-Host "==> $name is empty. Deleting it...";
        Remove-AzResourceGroup -Name $name -Force -WhatIf
    }
}
