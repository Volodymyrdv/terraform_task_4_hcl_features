locals {
  nic_names = [for i in range(var.vm_count) : "${var.prefix}-vm-${i}-nic"]
  nsg_rules = [
    {
      name     = "SSH"
      priority = 1001
      port     = 22
    },
    {
      name     = "HTTP"
      priority = 1002
      port     = 80
    }
  ]
}