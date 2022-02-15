variable "sg_ports" {
  type        = list(number)  // it means this is a list of number
  description = "list of ingress ports"
  default     = [8200, 8201,8300, 9200, 9500]
}