
# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string
resource "random_string" "bucket_name" {
 
 # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
 lower = true
 upper = false
  length           = 21
  special          = false
}

resource "aws_s3_bucket" "example" {
#Bucket Naming Rules
 #https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html?icmpid=docs_amazons3_console \
  bucket = random_string.bucket_name.result

    tags = {
    UserUuid = var.user_uuid
    #Environment = "Dev"
  }
}
