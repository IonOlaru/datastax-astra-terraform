resource "astra_streaming_tenant" "this" {
  tenant_name         = "tenant-01"
  user_email          = "io@anant.us"
  cloud_provider      = "aws"
  deletion_protection = false
  region              = "us-east-1"
}

resource "astra_streaming_namespace" "this" {
  cluster   = astra_streaming_tenant.this.cluster_name
  tenant    = astra_streaming_tenant.this.tenant_name
  namespace = "ns-01"
}

resource "astra_streaming_topic" "this" {
  cluster   = astra_streaming_tenant.this.cluster_name
  tenant    = astra_streaming_tenant.this.tenant_name
  namespace = astra_streaming_namespace.this.namespace
  topic = "t01"

  # Optional
  deletion_protection = false
  num_partitions      = 5
  partitioned         = true
  persistent          = true
}