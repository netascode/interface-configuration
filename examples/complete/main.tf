module "aci_interface_configuration" {
  source  = "netascode/interface-configuration/aci"
  version = ">= 0.0.1"

  node_id      = 101
  policy_group = "ACC1"
  description  = "Port description"
  port         = 10
}
