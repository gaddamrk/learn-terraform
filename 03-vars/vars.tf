variable "sample" {
  default = 10
}

output "sample" {
  value = var.sample
}

# string data type

variable "sample1" {
  default = "hello world"
}

# number data type
variable "sample2" {
  default = 100
}

#boolean data type
variable "data"  {
  default = true
}
