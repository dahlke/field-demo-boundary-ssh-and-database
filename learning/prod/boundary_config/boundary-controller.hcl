listener "tcp" {
  purpose = "api"
  address = "0.0.0.0"
  tls_disable = "true"
}

listener "tcp" {
  purpose = "cluster"
  address = "0.0.0.0"
  tls_disable = "true"
}

controller {
  name = "boundary-controller"
  description = "Boundary controller"
  public_cluster_addr = "boundary-controller"
  database {
    url = "postgres://boundary:boundary_pw@postgres:5432/boundary?sslmode=disable"
  }
}

kms "transit" {
  purpose = "root"
  address = "http://vault:8200"
  token = "boundary-test"
  disable_renewal = "true"
  key_name = "root"
  mount_path = "boundary"
}

kms "transit" {
  purpose = "recovery"
  address = "http://vault:8200"
  token = "boundary-test"
  disable_renewal = "true"
  key_name = "recovery"
  mount_path = "boundary"
}

kms "transit" {
  purpose = "worker-auth"
  address = "http://vault:8200"
  token = "boundary-test"
  disable_renewal = "true"
  key_name = "worker-auth"
  mount_path = "boundary"
}

disable_mlock = true