# Define required providers
terraform {
	required_version = ">= 0.14.0"
  		required_providers {
		    openstack = {
		      source  = "terraform-provider-openstack/openstack"
		      version = "~> 1.48.0"
		    }
  	}
}

# Configure the OpenStack Provider
provider "openstack" {
  user_name   = "shabr@ebi.ac.uk"
  tenant_name = "ensembl"
  auth_url    = "https://localhost:5000/"
  region      = "RegionOne"
  application_credential_id = "id"
  application_credential_secret = "secret"
}