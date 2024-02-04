
### STEP 1 
## Enable AWS organization - just to understand the concept - no real scenario implmentation
## This is a free services by AWS and will not create any billings
# Its the resouce within every ou that will cost depands on your requirments for a fully working envorinment setup

/* Service principal names for which you want to enable integration with your organization. 
This services you can see: AWS Organizations > Services, as a list of services e.g "Access enabled"  or "Access disabled"
If you checking the list now it will have "Access disabled for Amazon Detective"
- IF you uncomment the api for that service in the list and run apply , this will change to "Access enabled"
     - So now this service are alowed to be used across the Organization.

Here is a link to a list for some services:
https://gist.github.com/shortjared/4c1e3fe52bdfa47522cfe5b41e5d6f22
*/

resource "aws_organizations_organization" "myorg" {
  aws_service_access_principals = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
    "sso.amazonaws.com",
    # "detective.amazonaws.com",
  ]

  feature_set = "ALL"
}

### Adding OU for grouping resources/account/env for different pupose
# ou for admins
resource "aws_organizations_organizational_unit" "admin" {
  name      = "admin-group"
  parent_id = aws_organizations_organization.myorg.roots[0].id
}

# ou for services
resource "aws_organizations_organizational_unit" "workloads" {
  name      = "workloads"
  parent_id = aws_organizations_organization.myorg.roots[0].id
}

# nested ou within workloads for running a sandbox
resource "aws_organizations_organizational_unit" "sandbox" {
  name      = "sandbox"
  parent_id = aws_organizations_organizational_unit.workloads.id
}

/*
 In real scenario it could be a lot more attrobutes within the creation for ou  for different reasons
  - And often using module (module is like a template of resource, resource is the root code and module the template we can reuse
  (kind like helm chart concept))
  - tags for controlling resources and variable, tfvars ....etc..
  - Addin accounts to the organization

*/

/*
Structure will be:
ROOT
 - admin-group
 - workloads
  - sandbox
- [management account]

*/

