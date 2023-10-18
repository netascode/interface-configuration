resource "aci_rest_managed" "infraPortConfig" {
  dn         = "uni/infra/portconfnode-${var.node_id}-card-${var.card}-port-${var.port}-sub-${var.sub_port}"
  class_name = "infraPortConfig"
  content = {
    assocGrp     = var.policy_group_type == "access" ? "uni/infra/funcprof/accportgrp-${var.policy_group}" : "uni/infra/funcprof/accbundle-${var.policy_group}"
    brkoutMap    = var.breakout
    card         = var.card
    connectedFex = var.fex_id
    description  = var.description
    node         = var.node_id
    port         = var.port
    role         = var.role
    subPort      = var.sub_port
  }
}
