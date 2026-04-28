source "vagrant" "example" {
  communicator = "ssh"
  source_path  = "hashicorp-education/ubuntu-24-04"
  provider     = "virtualbox"
  add_force    = true
  boot_wait = "60s"
}

build {
  # name = "vagrant-packer"
  sources = ["source.vagrant.example"]

  provisioner "shell" {
    environment_vars = [
      "FOO=hello world",
    ]
    inline = [
      "echo Installing Redis",
      "sleep 30",
      "sudo apt-get update",
      "sudo apt-get install -y redis-server",
      "echo \"FOO is $FOO\" > example.txt",
    ]
    timeout = "10m"
  }

  provisioner "shell" {
    inline = ["echo This provisioner runs last"]
    timeout = "10m"
  }

}
