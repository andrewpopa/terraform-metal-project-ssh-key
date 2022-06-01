resource "random_pet" "this" {
  length = 3
}

resource "tls_private_key" "key" {
  algorithm   = "ECDSA"
  ecdsa_curve = "P521"
}

resource "equinix_metal_ssh_key" "this" {
  name       = var.project_ssh_name
  public_key = tls_private_key.key.public_key_openssh
}

resource "local_sensitive_file" "private_key_pem" {
  content         = tls_private_key.key.private_key_pem
  filename        = "${random_pet.this.id}.pem"
  file_permission = "0600"
}