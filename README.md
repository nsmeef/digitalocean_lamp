# LAMP

Terraform code to deploy a digital ocean droplet.

Ansible code to configure droplet for LAMP

## Deployment

Deploy Droplet

* `terraform init`
* `terraform plan -var='do_token={INSERT_TOKEN}' -var='vm_name=lamp-test' -var='private_key_path=~/.ssh/id_rsa' -var='ssh_keys=["b3:a6:6e:..."]'`
* `terraform apply -var='do_token={INSERT_TOKEN}' -var='vm_name=lamp-test' -var='private_key_path=~/.ssh/id_rsa' -var='ssh_keys=["b3:a6:6e:..."]' -auto-approve`

* `terraform destroy -var='do_token={INSERT_TOKEN}' -var='vm_name=lamp-test' -var='private_key_path=~/.ssh/id_rsa' -var='ssh_keys=["b3:a6:6e:..."]' -auto-approve`