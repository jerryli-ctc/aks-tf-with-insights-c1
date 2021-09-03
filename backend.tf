terraform {
 backend "remote" {
   hostname      = "app.terraform.io"
   organization  = "jerryli-ctc"

   workspaces {
     name = "aks-tf-with-insights-c1"
   }
 }
}