variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaauxftxgtbt6ciyoqpmrvhbzbapd7w6e6msvkbv3evz6b5x4b2mv3q"
  type    = string
}
variable "user_ocid" {
  default = ""
  type    = string
}
variable "fingerprint" {
  default = ""
  type    = string
}
# variable "private_key_path" {
#   default = ""
#   type    = string
# }
# variable "private_key_password" {
#   default = ""
#   type    = string
# }
variable "private_key" {
  default = ""
  type    = string
}

variable "region" {
  default = "me-jeddah-1"
  type    = string
  validation {
    condition     = length(trim(var.region, "")) > 0
    error_message = "The region variable is required."
  }
}

variable "region_key" {
  default = "jed"
  type    = string
  validation {
    condition     = length(regexall("^[a-z]{1,3}$", var.region_key)) > 0
    error_message = "The region_key variable is required and must be a 3 letter string, lowercase."
  }
}
variable "service_label" {
  default = "d360-nonprod"
  type    = string
  validation {
    condition     = length(regexall("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-][a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", var.service_label)) > 0
    error_message = "The service_label variable is required and must contain alphanumeric characters only, start with a letter and 8 character max."
  }
}
