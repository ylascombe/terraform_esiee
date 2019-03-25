resource "scaleway_server" "server" {
  name = "vm_${var.trigram}"
  image = "7069f3d0-23e3-4664-8f6b-1a17ed478dff"
  type = "VC1S"
}
