data "aws_iam_policy_document" "assume_role" {
  statement {
    actions = ["sts:AssumeRole"]

    # resources = [
    #   "arn:aws:ssm:us-west-2::parameter/aws/services/ecs/optimized-ami/amazon-linux-2/recommended"
    # ]
    principals {
      identifiers = ["ec2.amazonaws.com"]
      type        = "Service"
    }
  }
}

# https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#ecs-optimized-ami-linux
data "aws_ssm_parameter" "ecs_optimized_ami" {
  name = "/aws/services/ecs/optimized-ami/amazon-linux-2/recommended"
}
