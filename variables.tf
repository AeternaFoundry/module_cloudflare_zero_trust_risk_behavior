variable "zero_trust_risk_behaviors" {
  description = <<EOT
Map of zero_trust_risk_behaviors, attributes below
Required:
    - account_id
    - behaviors
EOT

  type = map(object({
    account_id = string
    behaviors = map(object({
      enabled    = bool
      risk_level = string
    }))
  }))
}

