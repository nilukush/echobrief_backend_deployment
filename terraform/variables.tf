variable "do_token" {
  description = "DigitalOcean API token"
}

variable "region" {
  description = "DigitalOcean region"
  default     = "nyc3"
}

variable "instance_size" {
  description = "Size of the DigitalOcean Droplet"
  default     = "s-1vcpu-1gb"
}

variable "ssh_key_name" {
  description = "Name of the SSH key in DigitalOcean"
}

variable "ssh_key_path" {
  description = "Path to the SSH private key file"
}
