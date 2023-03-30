# ---------------------------------
# KEYS SECTION
# ---------------------------------

/*
* To log in to aws account. Secret values
*/
#variable "access_key" {}
#variable "secret_key" {}

variable "access_key" {
  description = "ID acces KEY"
  default     = "XXXXXXXXXXXXX"
}

variable "secret_key" {
  description = "Value secret KEY"
  default     = "XXXXXXXXXXXXX"
}

# ---------------------------------
# END OF KEYS SECTION
# ---------------------------------

# ---------------------------------
# START OF NAMES SECTION
# ---------------------------------
#Change names with environment if need.
variable "aws-vpc-name" { default = "aws-vpc" }
variable "aws-ig-name" { default = "aws-ig" }
variable "aws-public-subnet-name-1" { default = "aws-public-subnet-1" }
variable "aws-public-subnet-name-2" { default = "aws-public-subnet-2" }
variable "aws-private-subnet-name-1" { default = "aws-private-subnet-1" }
variable "aws-private-subnet-name-2" { default = "aws-private-subnet-2" }
variable "aws-rt-name" { default = "aws-rt" }

# ---------------------------------
# END OF NAMES SECTION
# ---------------------------------

# ---------------------------------
# START OF AWS Variables
# ---------------------------------

variable "aws_zone" {
  type = map
  default = {
    "frankfurt" = "eu-central-1"
    "frankfurt.a" = "eu-central-1a"
    "frankfurt.b" = "eu-central-1b"
    "frankfurt.c" = "eu-central-1c"
    "ireland" = "eu-west-1"
    "ireland.a" = "eu-west-1a"
    "ireland.b" = "eu-west-1b"
    "ireland.c" = "eu-west-1c"
  }
}

# ---------------------------------
# END OF AWS Variables
# ---------------------------------