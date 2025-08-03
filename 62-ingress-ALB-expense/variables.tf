variable "project_name" {
  default = "roboshop"
}

variable "exp_project" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "Dev"
    CreatedBy   = "naveenrajoli@rajoli.com"
    Team        = "DevSecOps"
    Application = "Expense Tracker API"
  }
}

variable "domain_name" {
  default = "naveenrajoli.site"
}