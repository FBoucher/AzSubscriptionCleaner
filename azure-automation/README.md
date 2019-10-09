# Az Subcription Cleaner

## Version: Azure Automation

![Azure Subscription Cleaner](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/medias/AzSubscriptionCleaner.png?raw=true)

The Simple way to keep your Azure Subscription "clean". This Azure Runbook will automatically delete all "expired" resources inside your Azure Subscription, and nothing else.

A Resource is "expired" when it has a tag `expireOn` older then the current date.

# How to deploy

To deploy all the resources in your Azure subscription, just click on the **Deploy to Azure** button.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FFBoucher%2FAzSubcriptionCleaner%2Fmaster%2Fdeployment%2FdeployFuncAzure.json?WT.mc_id=azsubcleaner-github-frbouche" target="_blank"><img src="https://azuredeploy.net/deploybutton.png"/></a> (NOT YET FUNCTIONAL)

This will open the Azure Portal in a deployment form. You will need to give it a name and select the location where you would like to deploy it. 

# Create it yourself in 5 minutes

From the Azure Portal

1. Create a new Automation
    - Make sure to select *yes* at the create an Azure Run account
1. Create a new Runbook, the type should be PowerShell.
1. Copy-paste the content of the script [SubCleaner.ps1](SubCleaner.ps1)
    . Remove the -WhatIf at line 29 and 38, to really delete the resources. 
1. Save and Publish
1. Import the required modules in the **Modules** options

    . Az.Accounts
    . Az.ResourceGraph  
    . Az.Resources

1. Add a schedule.

To get a more detailed tutorial on how to create the Azure Automation you can refer to the blog post on Dev.to: [Keep your Azure Subscription Clean Automatically](https://dev.to/azure/keep-your-azure-subscription-clean-automatically-mmi)

## Video Tutorial - How to Delete All Expired Resources Automatically

<a href="https://www.youtube.com/watch?v=7WomkaZWh5w" target="blank"><img src="https://thepracticaldev.s3.amazonaws.com/i/fw03128nwdr5qc4yfwkm.png"/></a>
