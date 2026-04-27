source "vagrant" "example" {
  communicator = "ssh"
#source_path  = "bento/ubuntu-24.04"
  source_path  = "hashicorp-education/ubuntu-24-04"
  provider     = "virtualbox"
  add_force    = true
}

build {
  sources = ["source.vagrant.example"]
}
