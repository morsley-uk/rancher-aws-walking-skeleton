#     __      __        _       _     _           
#     \ \    / /       (_)     | |   | |          
#      \ \  / /_ _ _ __ _  __ _| |__ | | ___  ___ 
#       \ \/ / _` | '__| |/ _` | '_ \| |/ _ \/ __|
#        \  / (_| | |  | | (_| | |_) | |  __/\__ \
#         \/ \__,_|_|  |_|\__,_|_.__/|_|\___||___/

# AWS...

variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}

variable "region" {
  type = string
  default = "eu-west-2" # London
}

# Rancher...

variable "rancher_cluster_name" {
  type = string
  default = "rancher"
}

variable "domain" {
  type = string
  default = "morsley.io"
}
variable "subdomain" {
  type = string
  default = "rancher"
}

variable "rancher_bucket" {
  type = string
}

# EKS Cluster...

# https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-ami.html
variable "eks_ami_id" {
  type = string
  default = "ami-0ad8600a59c501b34" # For Kubernetes 1.15 & London (eu-west2)
}

variable "walking_skeleton_cluster_name" {
  type = string
  default = "walking-skeleton"
}

# https://docs.aws.amazon.com/eks/latest/userguide/kubernetes-versions.html
variable "eks_cluster_kubernetes_version" {
  type = string
  default = "1.16"
}

variable "eks_minimum_nodes" {
  type = number
  default = 3
}
variable "eks_desired_nodes" {
  type = number
  default = 5
}
variable "eks_maximum_nodes" {
  type = number
  default = 10
}

variable "eks_instance_type" {
  type = string
  default = "m5.xlarge"
}