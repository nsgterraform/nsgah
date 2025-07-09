variable "nsgname" {}
variable "location" {}
variable "rgnsgname" {}
variable "subnetids" {
    description = "(optional) List of subnet ids"
    type = list(string)
    default = []
}
variable "inboundrules" {
    description = "(optional) List of subnet ids"
    type = any
    default = []
}