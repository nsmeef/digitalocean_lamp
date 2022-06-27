# # Set the variable value in *.tfvars file
# # or using -var="do_token=..." CLI option
variable "do_token" {}

variable "vm_name" {}

variable "private_key_path" {}

variable "ssh_keys" {
  type = list(string)
}

variable "vm_region" {
    default = "lon1"
}

variable "vm_size" {
  default = "s-1vcpu-1gb"
}
