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

# Hack since terraform does not read env var currently :-(
cat <<EOF > generated-provider.tf
provider "scaleway" {
  organization = "${SCALEWAY_ORGANIZATION}"
  token        = "${SCALEWAY_TOKEN}"
  region       = "par1"
}
EOF