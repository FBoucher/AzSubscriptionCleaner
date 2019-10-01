# 

Set-AzResourceGroup -ResourceId (Get-AzResourceGroup -Name "StreamCleaner").ResourceId -Tag @{expireOn="2019-08-29"}

$group = Get-AzResourceGroup "StreamCleaner"
if ($null -ne $group.Tags) {
    $resources = Get-AzResource -ResourceGroupName $group.ResourceGroupName
    foreach ($r in $resources) {
        $resourcetags = (Get-AzResource -ResourceId $r.ResourceId).Tags
        if ($resourcetags) {
            foreach ($key in $group.Tags.Keys) {
                if (-not($resourcetags.ContainsKey($key))) {
                    $resourcetags.Add($key, $group.Tags.$key)
                }
            }
            Set-AzResource -Tag $resourcetags -ResourceId $r.ResourceId -Force
        }
        else
        {
            Set-AzResource -Tag $group.Tags -ResourceId $r.ResourceId -Force
        }
    }
}

