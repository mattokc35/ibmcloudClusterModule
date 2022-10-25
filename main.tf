


resource "ibm_container_vpc_cluster" "cluster" {
  name              = "${var.cluster_name}"
  vpc_id            = "${var.vpc_id}"
  kube_version      = "${var.kube_version}"
  flavor            = "${var.flavor}"
  worker_count      = "${var.worker_count}"
  resource_group_id = var.resource_group_id
  zones {
      subnet_id = "${var.subnet_id}"
      name      = "${var.ibm_region}-1"
    }

    
}