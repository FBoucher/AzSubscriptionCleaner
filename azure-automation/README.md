# Az Subcription Cleaner

## Version: Azure Automation

![Azure Subscription Cleaner](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/medias/AzSubscriptionCleaner.png?raw=true)

The Simple way to keep your Azure Subscription "clean". This Azure Runbook will automatically delete all "expired" resources inside your Azure Subscription, and nothing else.

A Resource is "expired" when it has a tag `expireOn` older then the current date.

# How to deploy

There is no automatic deployment yet. We start working on an ARM template but this part is not done. Feel free to contribute and send a pull request (PR).

# Create it yourself in 5 minutes

- From the Azure Portal (azure.portal.com), click the "+" sign in the top left of the screen,  and search for *automation*. Click Azure Automation to create a new one.

    > Make sure to select *yes* at the create an Azure Run account

- From the left panel click on **Runbook**, the type should be PowerShell.

- Copy-paste the content of the script [SubCleaner.ps1](SubCleaner.ps1)

    > Remove the -WhatIf at line 29 and 38, to really delete the resources.

- Save and **Publish**

- From the left panel click on **Modules**. You will need to import those three module (the order is important because of dependency)
    1. Az.Accounts
    2. Az.ResourceGraph  
    3. Az.Resources

- Create a schedules, to have the script executed every morning. Click on the **Schedules** from the left panel. Select the frequency you like, and save it.

To get a more detailed tutorial on how to create the Azure Automation you can refer to the blog post on Dev.to: [Keep your Azure Subscription Clean Automatically](https://dev.to/azure/keep-your-azure-subscription-clean-automatically-mmi)

## Video Tutorial - How to Delete All Expired Resources Automatically

<a href="https://www.youtube.com/watch?v=7WomkaZWh5w" target="blank"><img src="https://thepracticaldev.s3.amazonaws.com/i/fw03128nwdr5qc4yfwkm.png"/></a>
