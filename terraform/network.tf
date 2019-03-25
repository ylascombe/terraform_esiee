
resource "scaleway_ip" "ip" {
  server = "${scaleway_server.server.id}"
}

resource "scaleway_security_group" "ssh" {
  name        = "ssh_${var.trigram}"
  description = "allow SSH"
}

resource "scaleway_security_group_rule" "ssh_accept" {
  security_group = "${scaleway_security_group.ssh.id}"

  action    = "accept"
  direction = "inbound"
  ip_range  = "0.0.0.0/0"
  protocol  = "TCP"
  port      = 22
}

output "ip" {
  value = "${scaleway_ip.ip.ip}"
}