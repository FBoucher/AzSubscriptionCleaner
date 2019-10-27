# Az Subscription Cleaner

![Deploy to Azure](https://img.shields.io/badge/Deploy%20To-Azure-blue?logo=microsoft-azure)    [![GLO Board](https://img.shields.io/badge/with-GLO_Board-orange/?color=05887F&logoWidth=15&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFgAAABMCAMAAADeDICLAAAABlBMVEX///8A/+Bm7Mx0AAAAAXRSTlMAQObYZgAAAXlJREFUeNrV2NGOwjAMRNH4/396X5Cm26twww5IrF9CXfvUSlskWPuYOUh4kJ25HzN3RsOBi+SrMolLINu7hFx2t5dROgicLVyRC1fkwgWssru9zJZzuXFd7l2/gT3MXndL+ZEw12VO+lg6OA5gcV3OkitNBxMiDNdk7oXsRLkXzcDswfJJeHVwkIgfhOfL4ZDXzzV8nRIwZHUdNtldhym7SzgZkdWNhokpu8uJvxRep7DLPvC/hte7YfnahOzu3Zr4m0KYXs+FdZCTRD3EbeGzn2MGr/fBkXCdAia034t5GY6HBGXePLgcUEfehw8cWGRxoWDXSQtLxEZ2WAxkHTaX6UEHHzeBJR94s5z0z/aMw3jZKGd1WFzZZofpAoasMN3kVXZ4bgObPGfwYJ69nE8Os8VlUlw2rsvzBJ6h63JoiDjn7v3GOcwel22rWaTy78ItjHIPlBKu/kCe2cKs+xNN2FmnBzCft5fpBN+MsB0dGGxt47AOwsvjB19NCt1bbfikAAAAAElFTkSuQmCC)](https://app.gitkraken.com/glo/board/XWvcyQtDJAAPG-Qo)     [![Serverless Library](https://img.shields.io/badge/Serverless%20Library-%E2%9C%94%EF%B8%8Fyes-blue?style=flat&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAZCAMAAADzN3VRAAACx1BMVEUAAAAAAAAAAP8Af38AVaoAf78AVaoAbbYAXLkAc7kAZqoAWqUAY7gAZrIAZa4AYKwAY7QAZ7YAZ7MAZ7UAZLMAY7MAZLUAZrIAZLcAY7QAZrIAZLMAZLYAZ7YAZLYAZrcAZbgAZLMAZ7YAZbIAZLQAYrMAY7UAZLUAZLYAZbQAZrcAZbMAZbgAZbQAZrQAZrgAZrcAZbgAaLkAZbUAZbYAZ7YAZbUAZrUAZ7YAZ7cAZbcAZrcAZ7cAZrcAZ7cAZrcAZrcAZbcAZ7YAZ7cAZrcAZrYAZrcAZbYAZrcAZ7cAZrYAZrcAZrcAZ7cAZ7gAZrcAZrcAZ7cAZ7gAZ7gBaLcCaLcDabgEaLYFabUGarQGa7oHarMIbLoKbbsMbrsOb7wPcLwQcb0Rcb0SbawTcr0Xdb4Ydb8Zdr8dc6UeecEfdKQgcqMhe8Eic6IkdqEkfcIndJ4of8MqeJ0rgcQsdpsseZwxhMY2eZQ3iMc7fZI7gJJBjstCfYxGkcxHkcxMh4hNlc5TmM9VioFVmtBYnNFZnNFbndFbntFcntFcntJdn9Jfh3lhodNiodNnpNVopdVsi3Bsp9Ztj3BulXFuqdZuqddwqtd0mG11mG12j2l7mml9kWWGn2KMlluUpVmWpliaqFWpoEeusEivokOz0uq31Ou51eu61uy7pju81+2/2O3BqDfB2u7C2u7C2+7DqTbD2+7EuTrF3O/F3e/G3e/H3e/H3u/ItTbKqzLKuzbL4PDOsjDOvTTW5vTb6vXdwyrgsyPg7ffitCLk7/jm8PjqyCLq8/ns9PrttxrwuBjxuBfyzB3zvBfzzBzz+Pz0uRb1uRX1+fz2+v33+v34+/35uxL5/P36/P77wxP70Bf7/f78yhT8yxT8zBX8zRX8zhX8zxb80Bb8/f79vA/9vQ/9vhD9vxD9wBH9whH9xBL9xhP9xxP9yBOZ2sNJAAAAU3RSTlMAAQECAwQGBwsLDxESFCMlKSovOz1AQkNHSFBRUVFUVVpbW11gYmRlZmdoaWlqbXByc3V5e36AgYOIubrBysvR09XX2drd3ub2+vv7/Pz8/f7+/mxm4TkAAAHCSURBVHgBXcz1U1VBHEDxr90d2N2KLYbYAbZwVAzB7g6xOxS7OzCwu8UQFVtEBUMxWFeeoX+Ee5e5bxg+v56ZI155itesX80nl6STpYJ/EI5uzUplShsKtwVGP4+LexEff7hlQfHy7YKxU6kkrZ+NI7CsG2pj3VLql9YbgZ5lxCraHRjJDKW+an2qzwgg0A6zdQSWvhm/V6nf+tXkWS/nAi0ymFILWJEY0fuuSv6hd8H21wuA0qa0hrXvVzJHqb/6egiwKWERNBfJBxtM4IBSKfpJTEzM8b7rExbTOadUZNunCOj3UH3+6fF49NuZsC5xOT7SaOv3VcBCZSXpPRir3y2rIk1vx4YBS/ZHRh5SynMuBCP0wbE64jfl8clQrC3q39MJGGFno4dXlcqEPzqRmi4kp6yx4XT0UIpJAZgWe3QgMPbjn4M2nLk6hB65RdrDpHtRJu34dn8YMOj85cHgLyJ1gTF3jvTnxod5Trh0xQTKmZIjABh1MXzil30Y86Oc0CazGCWDcOy+OQBXp0JiNcZxbTpe1SVVRr9gmLoZV1df8SoRwOxebuhQRNLIXq8dVnCrGlklnfyVGjZpUD6vuP4DQn3cxeG842QAAAAASUVORK5CYII=)](https://serverlesslibrary.net/sample/148d5003-9002-43eb-9360-def08c2e4542)


![Azure Subscription Cleaner](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/medias/AzSubscriptionCleaner.png?raw=true)


The Simple way to keep your Azure Subscription "clean". This run on a schedule and automatically delete all "expired" resources inside your Azure Subscription, and nothing else.

A Resource is "expired" when it has a tag `expireOn` older then the current date.

---

# How to deploy

There is two version of this tool. One leveraging the Azure Function the second using Azure Automation. Both are valid options it just depends on your preferences.


## Solution 1: **[with Azure Function](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/azure-function/README.md)**

Created using the PowerShell Azure Function all details is available in the **[azure-function folder](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/azure-function/README.md)**


## Solution 2: **[with Azure Automation](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/azure-automation/README.md)**

The Azure Automation Runbook will execute a PowerShell Script base on a pre-define schedule.

All details are available in the **[azure-automation folder](https://github.com/FBoucher/AzSubcriptionCleaner/blob/master/azure-automation/README.md)**

To deploy all the resources in your Azure subscription, just click on the **Deploy to Azure** button.

--- 

# How Does it works

By Default, the tool will get triggered every morning at 5am and search for any resources tagged with `expireOn` with a value in the past, and delete them.

Once all the "expired" resources are deleted. It will search for empty Resource Group and delete them too.

--- 

# Manage Tags

To be able to delete some resources you need to tag them with a tag `expireOn` and a date as value following the format `YYYY-MM-dd`.

## From the Azure Portal

To add a tag from the portal select any resource. Then from the left panel select the ** Tags** option and add a tag with the name `expireOn` and the desired date.

![add-tag-portal](medias/add-tag-portal.png?raw=true)

## With PowerShell 

The following PowerShell command will add an `expireOn` tag with the value "2019-08-29" to the resource named *demoWebsite* in the resource group *summerDemo*.

```powershell
    Set-AzResource -ResourceId (Get-AzResource -ResourceGroupName summerDemo -Name demoWebsite).ResourceId -Tag @{expireOn="2019-08-29"}
```

You could also add tags to a resource group and all its resources. This script will add the tag `expireOn` with the value "2019-08-29"
add populate all resources to this resource group with the same tags.

```powershell
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
```




## With Azure CLI

It's also possible using Azure CLI. 

To add a tag `expireOn' with a value "2019-08-29" to the website *demoWebsite* IF the resource doesn't have existing tags, use:

    az resource tag --tags expireOn=2019-08-29 -g summerDemo -n demoWebsite --resource-type "Microsoft.Web/sites"

> This will delete any existing tags on that resource. If the resource has already tags use instead the following code.

To add a tag `expireOn' with a value "2019-08-29" to a website *demoWebsite* that already has tags, retrieve the existing tags, reformat that value, and reapply the existing and new tags:

    jsonrtag=$(az resource show -g summerDemo -n demoWebsite --resource-type "Microsoft.Web/sites" --query tags)

    rt=$(echo $jsonrtag | tr -d '"{},\n' | sed 's/: /=/g')
    
    az resource tag --tags $rt expireOn=2019-08-29 -g summerDemo -n demoWebsite --resource-type "Microsoft.Web/sites"

> To Learn more how to manage tags using PowerShell and Azure CLI visit **[bit.ly/azureTags](http://bit.ly/azureTags)**

---

# Azure Subscription

If you don't own an Azure subscription already, you can create your **free** account today. It comes with 200$ credit, so you can experience almost everything without spending a dime.

[Create your free Azure account today](https://azure.microsoft.com/en-us/free?WT.mc_id=azsubcleaner-github-frbouche)

---

# Current Status, Future Features

There is a [Glo board](https://app.gitkraken.com/glo/board/XWvcyQtDJAAPG-Qo) to see what's in progress and on the road map. Feel free to great issues to request new feature or if you find bugs.


## Contributing

Want to contribute? Check out our [Code of Conduct](CODE_OF_CONDUCT.md) and [Contributing](CONTRIBUTING.md) docs. This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification.  Contributions of any kind welcome!

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
<table>
  <tr>
    <td align="center"><a href="http://cloud5mins.com"><img src="https://avatars3.githubusercontent.com/u/2404846?v=4" width="100px;" alt="Frank Boucher"/><br /><sub><b>Frank Boucher</b></sub></a><br /><a href="https://github.com/FBoucher/AzSubscriptionCleaner/commits?author=FBoucher" title="Code">💻</a></td>
  </tr>
</table>

<!-- ALL-CONTRIBUTORS-LIST:END -->