resource "cloudflare_zero_trust_risk_behavior" "zero_trust_risk_behaviors" {
  for_each = var.zero_trust_risk_behaviors

  account_id = each.value.account_id
  behaviors  = each.value.behaviors
}

