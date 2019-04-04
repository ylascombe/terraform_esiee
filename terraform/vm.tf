resource "scaleway_ssh_key" "test" {
  key = "${var.public_ssh_key}"
}

resource "scaleway_server" "reverse_proxy" {
  name  = "rp_${var.trigram}"
  image = "7069f3d0-23e3-4664-8f6b-1a17ed478dff"
  type  = "VC1S"
}

resource "scaleway_server" "backend" {
  name  = "backend_${var.trigram}_${count.index}"
  image = "7069f3d0-23e3-4664-8f6b-1a17ed478dff"
  type  = "VC1S"
  count = 2
}

output "ips_apps" {
  value = "${scaleway_server.backend.*.private_ip}"
}
