data "aws_iam_policy_document" "assume_role" {
  statement {
    actions = [ "sts:AssumeRole" ]

    principals {
      identifiers = [ "ec2.amazonaws.com" ]
      type = "Service"
    }
  }
}

data "aws_ssm_parameter" "ecs_optimized_ami" {
  name = "/aws/services/ecs/optimized-ami/amazon-linux-2/recommended"
}