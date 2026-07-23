terraform {
  required_providers {
    scutum = {
      source  = "Sovforge/scutum"
      version = "~> 1.0"
    }
  }
}

# Credentials can also be provided via the SCUTUM_ENDPOINT and SCUTUM_API_KEY
# environment variables instead of hardcoding them here.
provider "scutum" {
  endpoint = "https://scutum.example.com"
  api_key  = var.scutum_api_key
}

variable "scutum_api_key" {
  description = "Scutum API key with admin privileges"
  sensitive   = true
}
