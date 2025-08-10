variable "vpcname" {
  description = "this is an vpc name"
  type        = string
  default     = "vpc-network"
}
variable "subnet1" {
  description = "this is an subnet1 name"
  type        = string
  default     = "my-subnet1"
}
variable "subnet2" {
  description = "this is an subnet2 name"
  type        = string
  default     = "my-subnet2"
}
variable "firewall" {
  description = "this is an firewall name"
  type        = string
  default     = "demo-firewall"
}
variable "vminstance" {
  description = "this is an vminstance name"
  type        = string
  default     = "my-vm-demo"
}
variable "machinetype" {
  description = "this is an vm machine type name"
  type        = string
  default     = "e2-micro"
}

variable "zone" {
  description = "this is an zonetype name"
  type        = string
  default     = "us-central1-a"
}
variable "vmimage" {
  description = "this is an vmimage name"
  type        = string
  default     = "debian-cloud/debian-11"
}
variable "vmsize" {
  description = "this is an vm machine size"
  type        = string
  default     = 15
}