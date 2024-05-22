resource "null_resource" "write" {
  # Changes to any instance of the cluster requires re-provisioning
  provisioner "local-exec" {
    command = "echo [myhosts]'\n'${module.vm.vm-ip}'\n'${module.vm2.vm-ip} > /home/juanigar/ansible-helloword-playbook/inventory.ini"
  }
  depends_on = [ module.vm, module.vm2 ]
}

# resource "null_resource" "clean" {
  
# }