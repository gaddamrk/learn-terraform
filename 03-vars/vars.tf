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
# list variable type
variable "sample5" {
  default = [
    100,
    "abc",
    "xyz"
  ]
}


output "sample5" {
  value = var.sample5[1]
}



# map variable type
variable "sample6" {
  default = {
    number = 100
    string = "xyz"
    boolean = false
  }
}


output "sample6" {
value = var.sample6["number"]
}

variable "demo1" {}

output "demo1" {
  value = var.demo1
}

## variable from shell env variables

variable "demo2" {
  default = "null"
}

output "demo2" {
  value = var.demo2
}