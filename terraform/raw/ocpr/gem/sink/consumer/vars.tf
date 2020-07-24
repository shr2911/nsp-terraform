variable "app_configs" {
  type = map(string)

  default = {
    subject_area              = "customer"
    domain_fullname          = "customer_management"
    domain_object_type       = "customer_profile"
  }
}

variable "cerberus_configs" {
  type = map(string)

  default = {
  preprod-sdb = "EDA DDP CUSTOMER PREPROD"
  prod-sdb    = "EDA DDP CUSTOMER PROD"
  preprod-sdp = "app/eda-ddp-customer-preprod/gem-okta"
  prod-sdp    = "app/eda-ddp-customer-prod/gem-okta"
  }
}

variable "stage" {

}
