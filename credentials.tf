variable "access_key" {
  description = "AWS Access key ID"
  default     = ""
}

variable "secret_key" {
  description = "AWS Secret access key"
  default = ""
}

variable "account_id" {
  description = "AWS Account ID"
  default     = ""
}

variable "region" {
  description = "AWS region in which resources are created"
  default = "eu-west-1"
}
