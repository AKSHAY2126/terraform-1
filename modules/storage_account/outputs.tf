output "storage_account_name_output" {
  value = random_string.storage_account_name.result
}

output "container_name_output" {
  value = random_string.container_name.result
}