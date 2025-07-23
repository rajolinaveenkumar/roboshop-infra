variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
    default = {
        Project         = "roboshop"
        Environment     = "Dev"
        CreatedBy = "naveenrajoli@rajoli.com"
        Team            = "DevSecOps" 
        Application     = "roboshop Tracker API" 
    }
}