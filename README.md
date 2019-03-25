
# Generate SSH key and add public part on scaleway
````
ssh-keygen -t rsa -b 4096 -C "user@email.com"
```

# Provision VirtualBox VM with vagrant

```
vagrant up
cd ansible
ansible-playbook -i inventory install_terraform.yml
```

# Login into VM
```
vagrant ssh
```



# Create provider.tf (or equivalent)

To get a token, there are multiple ways, for example, you can login via the scw CLI command `scw login` and print the result on `~/.scwrc`.


```
cd terraform
source set-env.sh
<enter your organisation and token>
terraform init
terraform apply
````

