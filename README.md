See https://developer.hashicorp.com/packer/integrations/hashicorp/vagrant/latest/components/builder/vagrant

## Basic steps

- package build .
- cd output-example
- vagrant up
- vagrant ssh

This assumes there is no box actually running (use "vagrant box list" and
"vagrant status" to check if needs). Also if rerunning use "package build --force .".
