variable "vm_name" {
  type        = string
}

variable "location" {
  type        = string
   
}

variable "resource_group_name" {
  type        = string
}


variable "vm_size" {
  type        = string
  
}
variable "subnet_id" {
  type        = string
}
variable "h_name" {
  type        = string
}
variable "h_admin" {
  type        = string
}
variable "h_passwd" {
  type = string
}
variable "image_publisher" {
  type        = string
}
variable "image_offer" {
  type        = string
}
variable "image_sku" {
  type        = string
}
variable "image_version" {
  type        = string
}
variable "d_name" {
  type        = string
}
variable "d_caching" {
  type        = string
}
variable "d_create_option" {
  type        = string
}
variable "d_managed_disk_type" {
  type        = string
}
variable "disable_password_authentication" {
  type        = string
}
variable "env_tag" {
  type        = string
}