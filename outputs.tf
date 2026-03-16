output "resource_group_ids" {
  value       = module.demo.resource_group_ids
  description = "Resource group ids"
}

output "storage_account_details" {
  value = module.storage.storage_account_details
  description = "storage account details"
}