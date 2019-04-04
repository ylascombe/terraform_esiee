variable "trigram" {
  type        = "string"
  description = "trigramme de l'étudiant qui a créé la VM"
}

variable "public_ssh_key" {
  type        = "string"
  description = "Cle SSH publique a ajouter sur les VMs pour pouvoir se connecter en SSH"
}
