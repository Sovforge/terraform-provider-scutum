resource "scutum_group" "production" {
  name        = "production"
  description = "All production edge nodes"
  node_ids = [
    scutum_node.edge_eu_west.id,
    scutum_node.edge_us_east.id,
  ]
}
