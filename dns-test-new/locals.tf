locals {
  name       = "private-dns-cloud"
  project_id = "formlabs-377008"
  region     = "us-central1"
  fqdn       = "prash.cloud."

  records = {
    "rec1" = {
      name    = "test123"
      type    = "A"
      rrdatas = ["10.0.1.2"]
      ttl     = 60
    }
  }

  cnamerecords = {
    "rec1" = {
      type_1    = "CNAME"
      rrdatas_1 = ["rds-magento2-production-formlabs-cloud-encrypted.cchlcddjm6zo.us-east-1.rds.amazonaws.com.prash.cloud."]
      ttl_1     = 300
    }
  }

  network_name = "dev-network"

  description = "The resource must be recreated to modify this field"

  subnets = [
    {
      subnet_name               = "subnet-01"
      subnet_ip                 = "10.235.0.0/24"
      subnet_region             = "us-east1"
      subnet_private_access     = "true"
      subnet_flow_logs          = "true"
      description               = "This subnet has a description"
      subnet_flow_logs          = "true"
      subnet_flow_logs_interval = "INTERVAL_10_MIN"
      subnet_flow_logs_sampling = 0.7
      subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
    }
  ]

<<<<<<< HEAD
  secondary_ranges = {
    subnet-01 = [
      {
        range_name    = "subnet-01-secondary-01"
        ip_cidr_range = "192.168.64.0/24"
      }
    ]
  }
  routes = [
          {
              name                   = "egress-internet"
              description            = "route through IGW to access internet"
              destination_range      = "0.0.0.0/0"
              tags                   = "egress-inet"
              next_hop_internet      = "true"
          },
        {
            name                   = "app-proxy"
            description            = "route through proxy to reach app"
            destination_range      = "10.50.10.0/24"
            tags                   = "app-proxy"
            next_hop_instance      = "app-proxy-instance"
            next_hop_instance_zone = "us-west1-a"
        }
  ]
=======
>>>>>>> 33721aac04a07f5608d3ed45ba7fba4472e1feaf

}
