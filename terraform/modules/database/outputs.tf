output "private_ip" {
  value = digitalocean_droplet.database.ipv4_address_private
}

output "droplet_urn" {
  value = digitalocean_droplet.database.urn
}
