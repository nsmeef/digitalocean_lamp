terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

# Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "web" {
  image    = "ubuntu-18-04-x64"
  name     = var.vm_name
  region   = var.vm_region
  size     = var.vm_size
  ssh_keys = var.ssh_keys

  # Establishes connection to be used by all
  # generic remote provisioners (i.e. file/remote-exec)
  connection {
    type        = "ssh"
    user        = "root"
    private_key = file(var.private_key_path)
    host        = self.ipv4_address
  }

  provisioner "file" {
    source      = "../ansible"
    destination = "/tmp"
  }

  provisioner "remote-exec" {
      script = "files/bootstrap.sh"
  }
}   