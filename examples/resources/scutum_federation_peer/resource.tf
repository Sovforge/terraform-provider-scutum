resource "scutum_federation_peer" "dr_site" {
  name          = "dr-site"
  hub_url       = "https://scutum-dr.example.com"
  wg_endpoint   = "203.0.113.50:51820"
  wg_public_key = "DrHubPubKey+AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="
  mesh_cidr     = "10.200.0.0/24"
}
