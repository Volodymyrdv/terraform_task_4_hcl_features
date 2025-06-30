output "converted_vm" {
  value = upper(azurerm_virtual_machine.main[0].name)
}
output "join_tags" {
  value = join(",", values(azurerm_virtual_machine.main[0].tags))
}
output "get_id_vm" {
  value = [for vm in azurerm_virtual_machine.main : vm.id]
}
