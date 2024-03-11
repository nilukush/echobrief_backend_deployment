resource "digitalocean_project" "echobrief" {
  name = "echobrief"
}

module "app" {
  source        = "./modules/app"
  instance_size = var.instance_size
  region        = var.region
  ssh_key_name  = var.ssh_key_name
  ssh_key_path  = var.ssh_key_path
  providers = {
    digitalocean = digitalocean
  }
}

module "database" {
  source        = "./modules/database"
  instance_size = var.instance_size
  region        = var.region
  ssh_key_name  = var.ssh_key_name
  ssh_key_path  = var.ssh_key_path
  providers = {
    digitalocean = digitalocean
  }
}

resource "digitalocean_project_resources" "echobrief_resources" {
  project = digitalocean_project.echobrief.id
  resources = [
    module.app.droplet_urn,
    module.database.droplet_urn
  ]
}
