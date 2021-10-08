output "id" {
  description = "The unique ID of the key"
  value       = module.key.id
}

output "name" {
  description = "The name of SSH key"
  value       = module.key.name
}

output "public_key" {
  description = "The public SSH key"
  value       = module.key.public_key
}

output "private_key_filename" {
  description = "Private key filename"
  value       = module.key.private_key_filename
}