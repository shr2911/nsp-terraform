module "customer-gem-source" {
  source                   = "../../../modules/gem/curated/source"
  sub_project              = var.app_configs["sub_project"]
  domain_fullname          = var.app_configs["domain_fullname"]
  domain_object_type       = var.app_configs["domain_object_type"]
  stage                    = var.stage
}
