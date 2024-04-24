module "vpc" {
    source              = "./vendor/modules/vpc/"       # Terrafile clones the backend module mentioned in the Terrafile and keeps it local to the root 
    VPC_CIDR            = var.VPC_CIDR
    PUBLIC_SUBNET_CIDR  = var.PUBLIC_SUBNET_CIDR
    PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
    ENV                 = var.ENV
    AZ                  = var.AZ
    DEFAULT_VPC_ID      = var.DEFAULT_VPC_ID
    DEFAULT_VPC_CIDR    = var.DEFAULT_VPC_CIDR
}

# We cannot parametrize anything that's added n the source.
# To limit that, we can use a tool called as Terrafile. All it does is clonnes the remote code from the specified branch and make it locally available.
