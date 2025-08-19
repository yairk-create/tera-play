variable "open_webui_user" {
  description = "Username to access the web UI"
  default     = "admin@demo.gs"
}

variable "openai_base" {
  description = "Optional base URL to use OpenAI API with Open Web UI" 
  default     = "https://api.openai.com/v1"
}

variable "openai_key" {
  description = "Optional API key to use OpenAI API with Open Web UI"
  default     = ""
}

variable "machine" {
  description = "The machine type and image to use for the VM"
  type = object({
    gpu = object({
      type = string
    })
    cpu = object({
      type = string
    })
variable "gpu_enabled" {
  description = "Set to true to provision a GPU-enabled VM, or false for a CPU-only VM. This variable controls which VM type from the 'machine' variable is selected."
  default     = false
}
    cpu = { type = "Standard_A2_v2" }
  }
}

variable "gpu_enabled" {
  description = "Is the VM GPU enabled"
  default     = false
}


terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.116.0"
    }
    cloudinit = {
      source = "hashicorp/cloudinit"
      version = "2.2.0"
    }
     terracurl = {
      source = "devops-rob/terracurl"
      version = "1.2.1"
    }
    random = {
      source = "hashicorp/random"
      version = "3.6.2"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}
