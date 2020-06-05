# Get 'admin' token from S3

# https://www.terraform.io/docs/providers/aws/r/s3_bucket.html

data "aws_s3_bucket_object" "admin-token" {

  bucket = var.rancher_bucket
  key    = "/admin_token.txt"

}

resource "aws_s3_bucket_object" "eks-kube-config-yaml" {

  bucket  = var.rancher_bucket
  key     = "/eks-kube-config.yaml"
  content = rancher2_cluster.walking-skeleton-eks.kube_config
  content_type = "text/*"

}