listener "tcp" {
  purpose = "proxy"
  address = "0.0.0.0"
  tls_disable = "true"
}

worker {
  name = "boundary-worker"
  description = "Demo worker instance"
  controllers = [
    "boundary-controller"
  ]
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