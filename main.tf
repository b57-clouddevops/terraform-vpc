module "vpc" {
    source              = "./vendor/modules/vpc/"       # Terrafile clones the backend module mentioned in the Terrafile and keeps it local to the root 
    VPC_CIDR            = var.VPC_CIDR
    PUBLIC_SUBNET_CIDR  = var.PUBLIC_SUBNET_CIDR
    PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR

}