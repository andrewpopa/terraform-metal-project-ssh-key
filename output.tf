output "id" {
  description = "The unique ID of the key"
  value       = equinix_metal_ssh_key.this.id
}

output "name" {
  description = "The name of SSH key"
  value       = equinix_metal_ssh_key.this.name
}

output "public_key" {
  description = "The public SSH key"
  value       = equinix_metal_ssh_key.this.public_key
}

output "private_key_filename" {
  description = "Private key filename"
  value       = local_sensitive_file.private_key_pem.filename
}