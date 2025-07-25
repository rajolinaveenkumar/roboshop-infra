resource "aws_ecr_repository" "mongodb" {
  name                 = "${var.project_name}-${var.environment}/mongodb"
  image_tag_mutability = "MUTABLE"
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "redis" {
  name                 = "${var.project_name}-${var.environment}/redis"
  image_tag_mutability = "MUTABLE"
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "rabbitmq" {
  name                 = "${var.project_name}-${var.environment}/rabbitmq"
  image_tag_mutability = "MUTABLE"
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "catalogue" {
  name                 = "${var.project_name}-${var.environment}/catalogue"
  image_tag_mutability = "MUTABLE"
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "cart" {
  name                 = "${var.project_name}-${var.environment}/cart"
  image_tag_mutability = "MUTABLE"
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "user" {
  name                 = "${var.project_name}-${var.environment}/user"
  image_tag_mutability = "MUTABLE"
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "shipping" {
  name                 = "${var.project_name}-${var.environment}/shipping"
  image_tag_mutability = "MUTABLE"
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "payment" {
  name                 = "${var.project_name}-${var.environment}/payment"
  image_tag_mutability = "MUTABLE"
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "dispatch" {
  name                 = "${var.project_name}-${var.environment}/dispatch"
  image_tag_mutability = "MUTABLE"
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "frontendroboshop" {
  name                 = "${var.project_name}-${var.environment}/frontendroboshop"
  image_tag_mutability = "MUTABLE"
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
}