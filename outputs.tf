output "zero_trust_risk_behaviors_account_id" {
  description = "Map of account_id values across all zero_trust_risk_behaviors, keyed the same as var.zero_trust_risk_behaviors except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_zero_trust_risk_behavior.zero_trust_risk_behaviors : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "zero_trust_risk_behaviors_behaviors" {
  description = "Map of behaviors values across all zero_trust_risk_behaviors, keyed the same as var.zero_trust_risk_behaviors except keys with no behaviors are omitted"
  value       = { for k, v in cloudflare_zero_trust_risk_behavior.zero_trust_risk_behaviors : k => v.behaviors if v.behaviors != null && length(v.behaviors) > 0 }
}

