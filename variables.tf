variable "ibmcloud_api_key" {
    type = string
    sensitive = true
}

variable "ibm_region" {
    type = string
    default = "us-south"
}

variable "resource_group_id" {
    type = string
    default = "271bbee55baf463e81cec7de47d4b219"
}

variable "vpc_id" {
    type = string
}

variable "worker_count" {
    type = string
    default = "3"
}

variable "subnet_id" {
    type = string
}

variable "cluster_name" {
    type = string
}

variable "kube_version" {
    type = string
    default = "1.23.12"
}

variable "flavor" {
    type = string
}