terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "databricks" {
  profile = var.databricks-cli-profile
}

data "databricks_user" "name" {
  user_name = "david.leiva@databricks.com"
}

output "name" {
  value = data.databricks_user.name
}
