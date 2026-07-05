#  variable "rg_variable" {
   
   
#  }

 variable "rg_variable" {



  type = map(object({
    name     = string
    location = string
    
  }))
}