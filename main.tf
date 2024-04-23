module "vpc" {
  source = "./vendor/modules/vpc/"       # Terrafile clones the backend module mentioned in the Terrafile and keeps it local to the root 
}
