# Az Subcription Cleaner

## Version: Azure Function

![Azure Subscription Cleaner](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/medias/AzSubscriptionCleaner.png)

> ⚠ Notes ⚠: This project is in progress and not 100% functional. See section [Current Status](#current-status) for more details.

The Simple way to keep your Azure Subscription "clean". This Azure Function will Automatically delete all "expired" resources inside your Azure Subscription, and nothing else.

A Resource is "expired" when it has a tag `expireOn` older then the current date.

## How to deploy

To deploy all the resources in your Azure subscription, just click on the **Deploy to Azure** button.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FFBoucher%2FAzSubcriptionCleaner%2Fmaster%2Fdeployment%2FdeployFuncAzure.json?WT.mc_id=azsubcleaner-github-frbouche" target="_blank"><img src="https://azuredeploy.net/deploybutton.png"/></a> (NOT YET FUNCTIONAL)

This will open the Azure Portal in a deployment form. You will need to give it a name and select the location where you would like to deploy it. 

