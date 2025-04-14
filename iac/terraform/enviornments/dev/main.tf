# ---------------------------------------------------------------------------------
# GKE Cluster Provisioning with Custom Cilium CNI and GPU-enabled Node Pools
# ---------------------------------------------------------------------------------

# Local variables for reuse across the module
locals {
  project     = "dev-gke-go"
  region      = "central-us"
  environment = "dev"
}
