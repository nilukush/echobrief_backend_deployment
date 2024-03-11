output "app_public_ip" {
  value = module.app.public_ip
}

output "database_private_ip" {
  value = module.database.private_ip
}
