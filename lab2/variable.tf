# resource group name
variable "rg_name" {
  description = "Name of the resource group"
  type        = string
  default = "myrg"
}

#virtual network name
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default = "myvnet"
}


# resource group location
variable "rg_location" {
  description = "Location of the resource group"
  type        = string
  # default = "East US"
}

#Business unit Name
variable "business_unit" {
  description = "Name of the business unit"
  type        = string
  default = "IT"

}   

#Environment Name
variable "environment" {
  description = "Name of the environment"
  type        = string
  # default = "Dev"
}
 