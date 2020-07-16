variable "users" {
  default = {
    Adarsh : { country : "USA", department : "ABC" },
    Narayan : { country : "Switzerland", department : "DEF" },
    Hegde : { country : "India", department : "XYZ" }
  }
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 2.70"
}

resource "aws_iam_user" "my_iam_users" {
  for_each = var.users
  name     = each.key
  tags = {
    #country: each.value
    country : each.value.country
    department : each.value.department
  }
}