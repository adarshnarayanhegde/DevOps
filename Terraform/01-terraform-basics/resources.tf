resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "my-s3-bucket-adhegde-001"
    versioning {
        enabled = true
    }
}

resource "aws_iam_user" "my_iam_user" {
    name = "my-iam-user-a"
}