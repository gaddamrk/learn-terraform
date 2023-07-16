variable "components" {
  default = {
    cart = {
      name = "cart",
      instance_type = "t3.micro"
    }
    catalogue = {
      name = "catalogue",
      instance_type = "t3.small"
    }
  }
}

module "ec2" {
  source = "./module"

  for_each = var.components
  instance_type = each.value.instance_type
  name          = each.value.name
}

## ALWAYS ITERATE MODULES NOT RESOURCES
## ALWAUS MAP THE DATA AND USE FOR_EACH LOOP