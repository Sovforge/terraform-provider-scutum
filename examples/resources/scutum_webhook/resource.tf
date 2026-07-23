resource "scutum_webhook" "pagerduty" {
  name   = "PagerDuty alerts"
  url    = "https://events.pagerduty.com/integration/abc123/enqueue"
  secret = var.webhook_secret
  events = [
    "alert.fired",
    "alert.resolved",
    "node.offline",
  ]
}

variable "webhook_secret" {
  description = "HMAC signing secret for the PagerDuty webhook"
  sensitive   = true
}