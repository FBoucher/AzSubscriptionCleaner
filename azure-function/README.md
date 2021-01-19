# Az Subcription Cleaner

## Version: Azure Function

![Azure Subscription Cleaner](https://github.com/FBoucher/AzSubcriptionCleaner/blob/main/medias/AzSubscriptionCleaner.png?raw=true)

The Simple way to keep your Azure Subscription "clean". This Azure Function will Automatically delete all "expired" resources inside your Azure Subscription, and nothing else.

A Resource is "expired" when it has a tag `expireOn` older then the current date.

# How to deploy

To deploy all the resources in your Azure subscription, just click on the **Deploy to Azure** button.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FFBoucher%2FAzSubcriptionCleaner%2Fmain%2Fdeployment%2FdeployFuncAzure.json?WT.mc_id=azsubcleaner-github-frbouche" target="_blank"><img src="https://azuredeploy.net/deploybutton.png"/></a>

This will open the Azure Portal in a deployment form. You will need to give it a name and select the location where you would like to deploy it.

## Video Tutorial - The cleaning Power of Azure Function at your service

<a href="https://www.youtube.com/watch?v=kbM8zwvUpkg" target="blank"><img src="https://thepracticaldev.s3.amazonaws.com/i/qu41aa3tqgjjxafby6jf.png"/></a>

Or Read the blog post [Use Azure Function to Clean-up your Mess, Automatically](https://dev.to/azure/use-azure-function-to-clean-up-your-mess-automatically-3h29)