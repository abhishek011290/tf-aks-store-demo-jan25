variable "resource_group_name" {
  type        = string
  description = "resource group name 2 b enters"
}

variable "region" {
  type        = string
  description = "enter the region"
}

variable "aks_info" {
  type = object({
    name       = string
    node_count = optional(number, 1)
    node_size  = optional(string, "Standard_B2ms")
  })
  description = "aks cluster info"

}

variable "build_id" {
  type    = string
  default = "1"
}