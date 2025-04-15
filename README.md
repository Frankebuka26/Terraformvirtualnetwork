# Terraformvirtualnetwork
Create a vitual network inside  a resource group.
Call the virtual network Vnet1 and resourcegroup Rg1.
Location is East US for Vnet.
Location is West US for resource group.
Each will have a tag called "Created", the value is name of the creator
Commit to Git hub
Use comments in code
Submit Repo URL


## Needed modifications
- Use only simple Variable types
- Every value must use a variable
- Modify the tag to use the format => "Created: Frank"
- Research and use TFVar file
- Put the providers detail to a new file called Provider.tf
- Use to apply Depends_on. Use that on the Vnet 
