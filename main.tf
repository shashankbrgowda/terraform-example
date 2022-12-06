resource "openstack_compute_instance_v2" "server" {
  name = "terraform-test"
  image_id = var.image
  flavor_id = var.flavor
  availability_zone = var.availability_zone
  key_pair = var.keypair
  security_groups = var.security_groups

  network {
    name = var.network
  }
}

output "serverip" {
 value = openstack_compute_instance_v2.server.access_ip_v4
}