# Az Subcription Cleaner

!["Azure Subcription Cleaner"](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/medias/AzSubscriptionCleaner.png)

The Simple way to keep your Azure Subscription "clean". This Azure Function will Automatically delete all "expired" resources inside your Azure Subscription, and nothing else.

## How to deploy

To deploy all the resources in your Azure subscription, just click on the **Deploy to Azure** button.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FFBoucher%2FAzSubcriptionCleaner%2Fmaster%2Fdeployment%2FdeployAzure.json?WT.mc_id=azsubcleaner-github-frbouche" target="_blank"><img src="https://azuredeploy.net/deploybutton.png"/></a>

This will open the Azure Portal in a deployment form. You will need to give it a name and select the location where you would like to deploy it. 

## How Does it works

By Default, the Azure Function will get trigger every morning at 5am and search for any resources tagged with `expireOn` with a value in the past, and delete them.

Once all the "expired" resources are deleted. It will search for empty resource group and delete them too.


## Manage Tags

You can add tage with the portal.

(instruction is coming)

### PowerShell 

PowerShell Command to add a ExpireOn Tag

    Set-AzResource -ResourceId (Get-AzResource -ResourceGroupName todelete -Name Auto-test).ResourceId -Tag @{expireOn="2019-08-29"}

### Azure CLI

It's also possible using Azure CLI. 

    az tag list

(instruction is coming)

## Azure Subscription

If you don't own an Azure subscription already, you can create your **free** account today. It comes with 200$ credit, so you can experience almost everything without spending a dime.

[Create your free Azure account today](https://azure.microsoft.com/en-us/free?WT.mc_id=azsubcleaner-github-frbouche)
