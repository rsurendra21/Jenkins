terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.37.0"
    }
  }
}

provider "github" {
  token = var.token
}

resource "github_repository" "repo1" {
  name        = "Infra"
  description = "Infracode goes here"
  visibility  = "public" 
  has_issues         = true
  has_wiki           = true
  auto_init          = true
  gitignore_template = "VisualStudio"   
}

resource "github_repository" "repo2" {
  name        = "Application"
  description = "DApplication code goes here"
  visibility  = "public" 
  has_issues         = true
  has_wiki           = true
  auto_init          = true
  gitignore_template = "VisualStudio" 
}