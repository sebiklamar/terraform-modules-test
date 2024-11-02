terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.66.3"
    }
    talos = {
      source  = "siderolabs/talos"
      version = "0.6.0-beta.0"
    }
  }
}

provider "proxmox" {
  endpoint = var.proxmox.endpoint
  insecure = var.proxmox.insecure
  api_token = var.proxmox.api_token
  ssh {
    agent    = true
    username = var.proxmox.username
  }
}
