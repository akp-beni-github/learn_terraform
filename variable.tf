variable "name" {
  description = "Name of the resource"
  type        = string
  # No default value specified here
}


variable "description" {
  default = "My awesome codebase"
  
}

variable "visibility" {
  default = "public"
  
}

variable "githubtoken" {
    #added with cli prompt 
    #or -var on plan and apply
    
  
}