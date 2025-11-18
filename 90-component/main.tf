# module "components" {
#   source         = "../../terraform-roboshop-component"
#   component      = var.component
#   rule_priority  = var.rule_priority
# }

module "components" {
  source         = "git::https://github.com/kukunuri-prasanna17/terraform-roboshop-component.git?ref=main"
  for_each = var.components
  component      = each.key
  rule_priority  = each.value.rule_priority
}