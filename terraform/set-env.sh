#!/usr/bin/env bash

echo "Please enter SCALEWAY_ORGANIZATION: "
read -s read_SCALEWAY_ORGANIZATION
export SCALEWAY_ORGANIZATION=${read_SCALEWAY_ORGANIZATION}

echo "Please enter SCALEWAY_TOKEN: "
read -s read_SCALEWAY_TOKEN
export SCALEWAY_TOKEN=${read_SCALEWAY_TOKEN}

export SCALEWAY_REGION="par1"

echo "Please enter your trigram: "
read -s read_TRIGRAM
export TF_VAR_trigram="${read_TRIGRAM}"

# Permet d'affecter la valeur du fichier de votre cl? publique dans la variable Terraform public_ssh_key
export TF_VAR_public_ssh_key="$(cat ~/.ssh/id_rsa.pub)"

# Hack since terraform does not read env var currently :-(
cat <<EOF > generated-provider.tf
provider "scaleway" {
  organization = "${SCALEWAY_ORGANIZATION}"
  token        = "${SCALEWAY_TOKEN}"
  region       = "par1"
}
EOF

