data "aws_caller_identity" "current" {}

locals {
  name_prefix = "Saw1"#split("/", "${data.aws_caller_identity.current.arn}")[1]
}
