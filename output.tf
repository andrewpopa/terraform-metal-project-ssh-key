output "id" {
  description = "The unique ID of the key"
  value       = equinix_metal_project_ssh_key.this.id
}

output "name" {
  description = "The name of SSH key"
  value       = equinix_metal_project_ssh_key.this.name
}

output "fingerprint" {
  description = "Fingerprint"
  value       = equinix_metal_project_ssh_key.this.fingerprint
}

output "private_key_filename" {
  description = "Private key filename"
  value       = local_sensitive_file.private_key_pem.filename
}