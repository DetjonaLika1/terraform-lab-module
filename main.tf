
module "user-Detjona-module" {
  source  = "app.terraform.io/devOpsKursi/user-milot-module/iam"
  version = "2.0.2"
  # insert required variables here
  user_name   = "Detjona-user"
  policy_name = "Detjona-policy"
  policy_document = {
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*", "iam:GetAccountPasswordPolicy", "elasticloadbalancing:DescribeLoadBalancers"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
      {
        Action = [
          "iam:ChangePassword"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  }
}
