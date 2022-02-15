### In Terraform CLI, workspaces are separate instances of state data that can be used from the same working directory. You can use workspaces to manage multiple non-overlapping groups of resources with the same configuration.

### 1) Every initialized working directory has at least one workspace. (If you haven't created other workspaces, it is a workspace named default.)
### 2) For a given working directory, only one workspace can be selected at a time.
### 3) Most Terraform commands (including provisioning and state manipulation commands) only interact with the currently selected workspace.
### 4) Use the terraform workspace select command to change the currently selected workspace.
### 5) Use the terraform workspace list, terraform workspace new, and terraform workspace delete commands to manage the available workspaces in the current working directory. ###
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Terraform Workspace commands:
```sh
terraform workspace -h  // to show all commands related to workspace
terraform workspace show  // to show my current workspace
terraform workspace new dev  // to create a new workspace called dev
terraform workspace new prd   // to create a new workspace called prd
terraform workspace list    // to see all workspace
terraform workspace select dev   // to select a workspace, means to change a workspace
```
# each and every workspace maintain a seperate tfstate file. 
we can compare workspace with different enviroment like - production enviroment to production workspace, development environment to development workspace, testing environment to testing workspace.
