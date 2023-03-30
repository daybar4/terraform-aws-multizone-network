output "AWS_VPC_NAME" { value = var.aws-vpc-name }
output "AWS_VPC_ID" {
  value       = aws_vpc.vpc.id
  description = "CREATED VPC ID"
}

output "AWS_INTERNET_GATEWAY_NAME" { value = var.aws-ig-name }
output "AWS_INTERNET_GATEWAY_ID" {
  value       = aws_internet_gateway.ig.id
  description = "CREATED INTERNET GATEWAY ID"
}

output "AWS_PUBLIC_SUBNET_NAME-1" { value = var.aws-public-subnet-name-1 }
output "AWS_PUBLIC_SUBNET_ID_1" {
  value       = aws_subnet.aws-public-subnet-1.id
  description = "CREATED PUBLIC SUBNET ID 1"
}

output "AWS_PUBLIC_SUBNET_NAME-2" { value = var.aws-public-subnet-name-2 }
output "AWS_PUBLIC_SUBNET_ID_2" {
  value       = aws_subnet.aws-public-subnet-2.id
  description = "CREATED PUBLIC SUBNET ID 2"
}

output "AWS_PRIVATE_SUBNET_NAME-1" { value = var.aws-private-subnet-name-1 }
output "AWS_PRIVATE_SUBNET_ID_1" {
  value       = aws_subnet.aws-private-subnet-1.id
  description = "CREATED PRIVATE SUBNET ID 1"
}

output "AWS_PRIVATE_SUBNET_NAME-2" { value = var.aws-private-subnet-name-2 }
output "AWS_PRIVATE_SUBNET_ID_2" {
  value       = aws_subnet.aws-private-subnet-2.id
  description = "CREATED PRIVATE SUBNET ID 2"
}

output "AWS_ROUTE_TABLE_NAME" { value = var.aws-rt-name }
output "AWS_ROUTE_TABLE_ID" {
  value       = aws_route_table.aws-rt.id
  description = "CREATED ROUTE TABLE ID"
}