terraform {
    required_providers{
        ibm = {
            source = "IBM-Cloud/ibm"
            version = ">= 1.12.0"
        }
    }
}

#configure IBM Cloud provider

provider "ibm" {
    region = "${var.ibm_region}"
    ibmcloud_api_key = var.ibmcloud_api_key
}
