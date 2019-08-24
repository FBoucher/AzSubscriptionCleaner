# Az Subcription Cleaner

![Azure Subscription Cleaner](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/medias/AzSubscriptionCleaner.png)

> ⚠ Notes ⚠: This project is in progress and not 100% functional. See section [Current Status](#current-status) for more details.

The Simple way to keep your Azure Subscription "clean". This Azure Function will Automatically delete all "expired" resources inside your Azure Subscription, and nothing else.

## How to deploy

To deploy all the resources in your Azure subscription, just click on the **Deploy to Azure** button.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FFBoucher%2FAzSubcriptionCleaner%2Fmaster%2Fdeployment%2FdeployAzure.json?WT.mc_id=azsubcleaner-github-frbouche" target="_blank"><img src="https://azuredeploy.net/deploybutton.png"/></a>

This will open the Azure Portal in a deployment form. You will need to give it a name and select the location where you would like to deploy it. 

## How Does it works

By Default, the Azure Function will get trigger every morning at 5am and search for any resources tagged with `expireOn` with a value in the past, and delete them.

Once all the "expired" resources are deleted. It will search for empty resource group and delete them too.


## Manage Tags

You can add tag with the portal.

(*instruction is coming*)

### PowerShell 

PowerShell Command to add a ExpireOn Tag

    Set-AzResource -ResourceId (Get-AzResource -ResourceGroupName todelete -Name Auto-test).ResourceId -Tag @{expireOn="2019-08-29"}

### Azure CLI

It's also possible using Azure CLI. 

    az tag list

(*instruction is coming*)

## Azure Subscription

If you don't own an Azure subscription already, you can create your **free** account today. It comes with 200$ credit, so you can experience almost everything without spending a dime.

[Create your free Azure account today](https://azure.microsoft.com/en-us/free?WT.mc_id=azsubcleaner-github-frbouche)


## Current Status

Right now the solution is partially working. Here what works and not.

### Working 👍

- The PowerShell command are doing what there a suppose to do. If you have a open session and that you have the module `Az.ResourceGraph` you could run locally the command and it will clean your subscription.

    ```powershell
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
    ```

- The Azure Resource Manager (ARM) template is valid and functional
- The Deploy to Azure Button, will deploy everything in your Azure Subscription

### Known Issues

- The Azure Function is failing:
    - `ERROR: Run Connect-AzAccount to login` It needs a open session (in progress)