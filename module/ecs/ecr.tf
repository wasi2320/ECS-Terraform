resource "aws_ecr_repository" "demo-repository" {
  name                 = var.ecr_repo_name
}