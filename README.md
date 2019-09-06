# Az Subcription Cleaner

![Deploy to Azure](https://img.shields.io/badge/Deploy%20To-Azure-blue?logo=microsoft-azure)    [![GLO Board](https://img.shields.io/badge/with-GLO_Board-orange/?color=05887F&logoWidth=15&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFgAAABMCAMAAADeDICLAAAABlBMVEX///8A/+Bm7Mx0AAAAAXRSTlMAQObYZgAAAXlJREFUeNrV2NGOwjAMRNH4/396X5Cm26twww5IrF9CXfvUSlskWPuYOUh4kJ25HzN3RsOBi+SrMolLINu7hFx2t5dROgicLVyRC1fkwgWssru9zJZzuXFd7l2/gT3MXndL+ZEw12VO+lg6OA5gcV3OkitNBxMiDNdk7oXsRLkXzcDswfJJeHVwkIgfhOfL4ZDXzzV8nRIwZHUdNtldhym7SzgZkdWNhokpu8uJvxRep7DLPvC/hte7YfnahOzu3Zr4m0KYXs+FdZCTRD3EbeGzn2MGr/fBkXCdAia034t5GY6HBGXePLgcUEfehw8cWGRxoWDXSQtLxEZ2WAxkHTaX6UEHHzeBJR94s5z0z/aMw3jZKGd1WFzZZofpAoasMN3kVXZ4bgObPGfwYJ69nE8Os8VlUlw2rsvzBJ6h63JoiDjn7v3GOcwel22rWaTy78ItjHIPlBKu/kCe2cKs+xNN2FmnBzCft5fpBN+MsB0dGGxt47AOwsvjB19NCt1bbfikAAAAAElFTkSuQmCC)](https://app.gitkraken.com/glo/board/XWvcyQtDJAAPG-Qo)     [![Serverless Library](https://img.shields.io/badge/Serverless%20Library-%E2%9C%94%EF%B8%8Fyes-blue?style=flat&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAZCAMAAADzN3VRAAACx1BMVEUAAAAAAAAAAP8Af38AVaoAf78AVaoAbbYAXLkAc7kAZqoAWqUAY7gAZrIAZa4AYKwAY7QAZ7YAZ7MAZ7UAZLMAY7MAZLUAZrIAZLcAY7QAZrIAZLMAZLYAZ7YAZLYAZrcAZbgAZLMAZ7YAZbIAZLQAYrMAY7UAZLUAZLYAZbQAZrcAZbMAZbgAZbQAZrQAZrgAZrcAZbgAaLkAZbUAZbYAZ7YAZbUAZrUAZ7YAZ7cAZbcAZrcAZ7cAZrcAZ7cAZrcAZrcAZbcAZ7YAZ7cAZrcAZrYAZrcAZbYAZrcAZ7cAZrYAZrcAZrcAZ7cAZ7gAZrcAZrcAZ7cAZ7gAZ7gBaLcCaLcDabgEaLYFabUGarQGa7oHarMIbLoKbbsMbrsOb7wPcLwQcb0Rcb0SbawTcr0Xdb4Ydb8Zdr8dc6UeecEfdKQgcqMhe8Eic6IkdqEkfcIndJ4of8MqeJ0rgcQsdpsseZwxhMY2eZQ3iMc7fZI7gJJBjstCfYxGkcxHkcxMh4hNlc5TmM9VioFVmtBYnNFZnNFbndFbntFcntFcntJdn9Jfh3lhodNiodNnpNVopdVsi3Bsp9Ztj3BulXFuqdZuqddwqtd0mG11mG12j2l7mml9kWWGn2KMlluUpVmWpliaqFWpoEeusEivokOz0uq31Ou51eu61uy7pju81+2/2O3BqDfB2u7C2u7C2+7DqTbD2+7EuTrF3O/F3e/G3e/H3e/H3u/ItTbKqzLKuzbL4PDOsjDOvTTW5vTb6vXdwyrgsyPg7ffitCLk7/jm8PjqyCLq8/ns9PrttxrwuBjxuBfyzB3zvBfzzBzz+Pz0uRb1uRX1+fz2+v33+v34+/35uxL5/P36/P77wxP70Bf7/f78yhT8yxT8zBX8zRX8zhX8zxb80Bb8/f79vA/9vQ/9vhD9vxD9wBH9whH9xBL9xhP9xxP9yBOZ2sNJAAAAU3RSTlMAAQECAwQGBwsLDxESFCMlKSovOz1AQkNHSFBRUVFUVVpbW11gYmRlZmdoaWlqbXByc3V5e36AgYOIubrBysvR09XX2drd3ub2+vv7/Pz8/f7+/mxm4TkAAAHCSURBVHgBXcz1U1VBHEDxr90d2N2KLYbYAbZwVAzB7g6xOxS7OzCwu8UQFVtEBUMxWFeeoX+Ee5e5bxg+v56ZI155itesX80nl6STpYJ/EI5uzUplShsKtwVGP4+LexEff7hlQfHy7YKxU6kkrZ+NI7CsG2pj3VLql9YbgZ5lxCraHRjJDKW+an2qzwgg0A6zdQSWvhm/V6nf+tXkWS/nAi0ymFILWJEY0fuuSv6hd8H21wuA0qa0hrXvVzJHqb/6egiwKWERNBfJBxtM4IBSKfpJTEzM8b7rExbTOadUZNunCOj3UH3+6fF49NuZsC5xOT7SaOv3VcBCZSXpPRir3y2rIk1vx4YBS/ZHRh5SynMuBCP0wbE64jfl8clQrC3q39MJGGFno4dXlcqEPzqRmi4kp6yx4XT0UIpJAZgWe3QgMPbjn4M2nLk6hB65RdrDpHtRJu34dn8YMOj85cHgLyJ1gTF3jvTnxod5Trh0xQTKmZIjABh1MXzil30Y86Oc0CazGCWDcOy+OQBXp0JiNcZxbTpe1SVVRr9gmLoZV1df8SoRwOxebuhQRNLIXq8dVnCrGlklnfyVGjZpUD6vuP4DQn3cxeG842QAAAAASUVORK5CYII=)](https://serverlesslibrary.net/sample/148d5003-9002-43eb-9360-def08c2e4542)


![Azure Subscription Cleaner](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/medias/AzSubscriptionCleaner.png?raw=true)


The Simple way to keep your Azure Subscription "clean". This run on a schedule and automatically delete all "expired" resources inside your Azure Subscription, and nothing else.

A Resource is "expired" when it has a tag `expireOn` older then the current date.

# How to deploy

There is two version of this tool. One leveraging the Azure Function the second using Azure Automation. Both are valid options it just depends on your preferences.


## The Version: Azure Function

Created using the PowerShell Azure Function all details is available in the [azure-function folder](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/azure-function/README.md)


## The Version: Azure Automation

The Azure Automation Runbook will execute a PowerShell Script base on a pre-define schedule.

All details are available in the [azure-automation folder](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/azure-automation/README.md)

To deploy all the resources in your Azure subscription, just click on the **Deploy to Azure** button.


# How Does it works

By Default, the tool will get triggered every morning at 5am and search for any resources tagged with `expireOn` with a value in the past, and delete them.

Once all the "expired" resources are deleted. It will search for empty Resource Group and delete them too.


# Manage Tags

To be able to delete some resources you need to tag them with a tag `expireOn` and a date as value following the format `YYYY-MM-dd`.

## From the Azure Portal

To add a tag from the portal select any resource. Then from the left panel select the ** Tags** option and add a tag with the name `expireOn` and the desired date.

![add-tag-portal](medias/add-tag-portal.png)

## PowerShell 

PowerShell Command to add a ExpireOn Tag

    Set-AzResource -ResourceId (Get-AzResource -ResourceGroupName todelete -Name Auto-test).ResourceId -Tag @{expireOn="2019-08-29"}

## Azure CLI

It's also possible using Azure CLI. 

    az tag list

(*instruction is coming*)

# Azure Subscription

If you don't own an Azure subscription already, you can create your **free** account today. It comes with 200$ credit, so you can experience almost everything without spending a dime.

[Create your free Azure account today](https://azure.microsoft.com/en-us/free?WT.mc_id=azsubcleaner-github-frbouche)


# Current Status, Future Features

There is a [Glo board](https://app.gitkraken.com/glo/board/XWvcyQtDJAAPG-Qo) to see what's in progress and on the road map. Feel free to great issues to request new feature or if you find bugs.


