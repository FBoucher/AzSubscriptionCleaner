# Az Subcription Cleaner

## Version: Azure Function

![Azure Subscription Cleaner](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/medias/AzSubscriptionCleaner.png)

The Simple way to keep your Azure Subscription "clean". This Azure Function will Automatically delete all "expired" resources inside your Azure Subscription, and nothing else.

A Resource is "expired" when it has a tag `expireOn` older then the current date.

# How to deploy

To deploy all the resources in your Azure subscription, just click on the **Deploy to Azure** button.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FFBoucher%2FAzSubcriptionCleaner%2Fmaster%2Fdeployment%2FdeployFuncAzure.json?WT.mc_id=azsubcleaner-github-frbouche" target="_blank"><img src="https://azuredeploy.net/deploybutton.png"/></a>

This will open the Azure Portal in a deployment form. You will need to give it a name and select the location where you would like to deploy it. 

Once the deployment is completed, from the Azure Portal select the subcription. First from the left menu select *All Services* and type "Subscription" in the search bar. Click on **Subscriptions** to see the list of available subscriptions.  Click on the subscription where you just deployed AzSubscriptionCleaner.

!["Select Subscription"][selectSubscription]

From the option at the left select *Access control (IAM)*. Click *Add* and select *Add role assignment*. From the new panel on the left, Select *Contributor* as Role and enter the name of your resource (ex: azsubcleaner) in the *Select* textbox.

!["Assign Role"][AssignRole]

Select the *Select* blue button, and your are done!



[selectSubscription]: ../medias/selectSubscription.png 
[AssignRole]: ../medias/AssignRole.png 


