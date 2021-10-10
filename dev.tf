#Dev server

resource "scaleway_instance_ip" "dev_ip" {
  zone = var.zone
}

resource "scaleway_instance_server" "dev" {
  name              = "dev"
  image             = "ubuntu_focal"
  type              = "DEV1-S"
  tags              = ["dev"]
  enable_dynamic_ip = "false"

  ip_id = scaleway_instance_ip.dev_ip.id
}
