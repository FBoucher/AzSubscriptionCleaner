

$connectionName = "AzureRunAsConnection"
try
{
    # Get the connection "AzureRunAsConnection "
    $servicePrincipalConnection=Get-AutomationConnection -Name $connectionName         

    Connect-AzAccount `
        -ServicePrincipal `
        -Tenant $servicePrincipalConnection.TenantId `
        -ApplicationId $servicePrincipalConnection.ApplicationId `
        -CertificateThumbprint $servicePrincipalConnection.CertificateThumbprint 
}
catch {
    if (!$servicePrincipalConnection)
    {
        $ErrorMessage = "... Connection $connectionName not found."
        throw $ErrorMessage
    } else{
        write-host -Message $_.Exception
        throw $_.Exception
    }
}

$expResources= Search-AzGraph -Query 'where todatetime(tags.expireOn) < now() | project id'

foreach ($r in $expResources) {
    write-host "Deleting Resource with ID: $r.id"
    Remove-AzResource -ResourceId $r.id -Force -WhatIf #REMOVE THE WHATIF TO REALLY DELETE RESOURCES
}

$rgs = Get-AzResourceGroup;
 
foreach($resourceGroup in $rgs){
    $name=  $resourceGroup.ResourceGroupName;
    $count = (Get-AzResource | Where-Object{ $_.ResourceGroupName -match $name }).Count;
    if($count -eq 0){
        write-host "... Deleting Resource Group: $name"
        Remove-AzResourceGroup -Name $name -Force -WhatIf #REMOVE THE WHATIF TO REALLY DELETE RESOURCES
    }
}


