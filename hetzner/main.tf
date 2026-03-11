terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.45"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}


resource "hcloud_server" "vm" {
  name        = "devsecops-lab"
  server_type = "cx23"
  image       = "ubuntu-22.04"
  location    = "hel1"

  user_data = file("../startup.sh")
}