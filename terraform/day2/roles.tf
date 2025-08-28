resource "aws_iam_role" "ec2_role" {
  name               = "${var.project}ec2_role"
  assume_role_policy = data.aws_iam_policy_document.ec2_assume.json
}

data "aws_iam_policy_document" "ec2_assume" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "${var.project}ec2-profile"
  role = aws_iam_role.ec2_role.name
}
