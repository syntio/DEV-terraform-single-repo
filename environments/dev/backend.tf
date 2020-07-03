terraform {
  backend "gcs" {
    bucket = "landscape-project-220208-ivan-tfstate"
    prefix = "env/dev"
  }
}
