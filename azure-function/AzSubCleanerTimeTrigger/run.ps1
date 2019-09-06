# Input bindings are passed in via param block.
param($Timer)

# Get the current universal time in the default string format
$currentUTCtime = (Get-Date).ToUniversalTime()

$expResources= Search-AzGraph -Query 'where todatetime(tags.expireOn) < now() | project id'
foreach ($r in $expResources) {
    Write-Host "Expired Resource ID=" + $r.id
    Remove-AzResource -ResourceId $r.id -Force # -WhatIf #Add/Remove WhatIf when in Test/Production
}

$rgs = Get-AzResourceGroup;
 
foreach($resourceGroup in $rgs){
    $name=  $resourceGroup.ResourceGroupName;
    $count = (Get-AzResource | Where-Object{ $_.ResourceGroupName -match $name }).Count;
    if($count -eq 0){
        Write-Host "==> $name is empty. Deleting it...";
        Remove-AzResourceGroup -Name $name -Force # -WhatIf #Add/Remove WhatIf when in Test/Production
    }
}
