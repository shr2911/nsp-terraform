module "customer-gem-sink" {
source                   = "../../../../../modules/gem/raw/sink/consumer"
subject_area              = var.app_configs["subject_area"]
domain_object_type       = var.app_configs["domain_object_type"]
stage                    = var.stage
}
