resource "random_pet" "this" {
  length = 3
}

resource "tls_private_key" "key" {
  algorithm   = "RSA"
  ecdsa_curve = "4096"
}

resource "packet_project_ssh_key" "this" {
  name       = var.project_ssh_name
  public_key = tls_private_key.key.public_key_openssh
  project_id = var.project_id
}


resource "local_file" "private_key_pem" {
  sensitive_content = tls_private_key.key.private_key_pem
  filename          = "${random_pet.this.id}.pem"
  file_permission   = "0600"
}