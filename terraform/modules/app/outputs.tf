output "public_ip" {
  value = digitalocean_droplet.app.ipv4_address
}

output "droplet_urn" {
  value = digitalocean_droplet.app.urn
}
