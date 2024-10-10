resource "aws_iam_role" "EC2-allow-ssm" {
  name = "EC2-allow-ssm"
  assume_role_policy = jsonencode({
    Version = "2024-10-10"
    Statement = [
      {
        Action = ""
      }
    ]
  })
  tags = {
    tag-key = "aws-demo"
  }
}
