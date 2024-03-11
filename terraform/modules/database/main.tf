terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

resource "digitalocean_droplet" "database" {
  image    = "ubuntu-20-04-x64"
  name     = "echobrief-database"
  region   = var.region
  size     = var.instance_size
  ssh_keys = [data.digitalocean_ssh_key.main.id]
}

data "digitalocean_ssh_key" "main" {
  name = var.ssh_key_name
}
