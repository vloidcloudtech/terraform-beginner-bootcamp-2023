terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
cloud{
  organization = "vloid"

 workspaces {
    name = "terra-house-1"
  }
}
}
provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid= var.teacherseat_user_uuid
  token= var.terratowns_access_token
}
module "home_soul_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.soul.public_path
  content_version = var.soul.content_version
}
resource "terratowns_home" "home_soul" {
  name = "Music for the soul"
  description = <<DESCRIPTION
This music is for the soul. My people have struggled to find peace in a country that we built 
so we decided to create music that will free our soul
DESCRIPTION
 domain_name = module.home_soul_hosting.domain_name
  town = "missingo"
  content_version = var.soul.content_version
}
module "home_kakashi_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.kakashi.public_path
  content_version = var.kakashi.content_version
}
resource "terratowns_home" "home_kakashi" {
  name = "My favorite anime character"
  description = <<DESCRIPTION
Since I watch anime often, I can pull inspiration from characters
DESCRIPTION
  domain_name = module.home_kakashi_hosting.domain_name
  town = "missingo"
  content_version = var.kakashi.content_version
}