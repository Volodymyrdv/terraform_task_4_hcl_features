locals {
  ni_name = [for i in range(var.vm_count) : "${var.prefix}-vm-${i}-nic"]
  nsg-rules = [
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