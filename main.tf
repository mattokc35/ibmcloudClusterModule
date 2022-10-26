


resource "ibm_container_vpc_cluster" "cluster" {
  name              = "${var.cluster_name}"
  vpc_id            = "${var.vpc_id}"
  kube_version      = "${var.kube_version}"
  flavor            = "${var.flavor}"
  worker_count      = "${var.worker_count}"
  resource_group_id = var.resource_group_id
  zones {
      subnet_id = "${var.subnet1_id}"
      name      = "${var.ibm_region}-1"
    }

    
}

resource "ibm_container_vpc_worker_pool" "cluster_pool" {
  cluster           = ibm_container_vpc_cluster.cluster.id
  worker_pool_name  = "mattokc35wp"
  flavor            = "${var.flavor}"
  vpc_id            = "${var.vpc_id}"
  worker_count      = "${var.worker_count}"
  resource_group_id = var.resource_group_id
  zones {
    name      = "${var.ibm_region}-2"
    subnet_id = "${var.subnet2_id}"
  }
}