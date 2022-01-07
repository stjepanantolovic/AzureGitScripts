# Create variables
$webbappname = "mywebapps$(Get-Random)"
$rgname ='webapps-dev-rg-stjepan'
$location = 'westus2'

#Create a resource group
New-AzResourceGroup Name $rgname -Location $location

#Create an App Service plan in S1 tier
New-AzAppServicePlan Name $webbappname -Location $location -ResourceGroupName $rgname -Tier S1

#Create a web app
New-AzWebApp Name $webbappname -Location $location AppServicePlan $webbappname -ResourceGroupName $rgname