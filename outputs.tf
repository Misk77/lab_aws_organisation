/*
We can also get some information regarding our infrastrucute by using output.tf file
Kind as returning values.

e.g we can output an ip in the terminal, for comfirmation and knowldge about the ip or aother resources.
note:
some values that output may shows, we dont want to share with other!
BUT as always outputs should never include sensitive values or either be within a repository in clear text.
*/

# output "admin_ou_arn" {
#   value = concat(aws_organizations_organizational_unit.admin.*.arn, [""])[0]
#   description = "ARN of the organizational unit"
# }

# output "admin_ou_id" {
#   value = concat(aws_organizations_organizational_unit.admin.*.id, [""])[0]
#   description = "Identifier of the organization unit"
# }

output "admin_ou_name" {
  value = concat(aws_organizations_organizational_unit.admin.*.name, [""])[0]
  description = "Name of the organizational unit"
}

# output "workloads_ou_arn" {
#   value = concat(aws_organizations_organizational_unit.workloads.*.arn, [""])[0]
#   description = "ARN of the organizational unit"
# }

# output "workloads_ou_id" {
#   value = concat(aws_organizations_organizational_unit.workloads.*.id, [""])[0]
#   description = "Identifier of the organization unit"
# }

output "workloads_ou_name" {
  value = concat(aws_organizations_organizational_unit.workloads.*.name, [""])[0]
  description = "Name of the organizational unit"
}

# output "sandbox_ou_arn" {
#   value = concat(aws_organizations_organizational_unit.sandbox.*.arn, [""])[0]
#   description = "ARN of the organizational unit"
# }

# output "sandbox_ou_id" {
#   value = concat(aws_organizations_organizational_unit.sandbox.*.id, [""])[0]
#   description = "Identifier of the organization unit"
# }

output "sandbox_ou_name" {
  value = concat(aws_organizations_organizational_unit.sandbox.*.name, [""])[0]
  description = "Name of the organizational unit"
}

# output "roots" {
#   value = concat(aws_organizations_organization.myorg.*.roots, [""])[0]
#   description = "List of organization roots"
# }

# output "org_accounts" {
#   value = concat(aws_organizations_organization.myorg.*.accounts, [""])[0]
#   description = "List of organization accounts including the master account"
# }

