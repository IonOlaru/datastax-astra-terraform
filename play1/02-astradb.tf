resource "astra_database" "this" {
  name           = "tfdb1"
  keyspace       = "ks1"
  cloud_provider = "aws"
  regions = ["us-east-1"]
}