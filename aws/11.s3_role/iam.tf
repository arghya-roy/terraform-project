resource "aws_iam_role" "s3-mybucket-role" {
  name               = "s3-mybucket-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}

resource "aws_iam_instance_profile" "s3-mybucket-role-instanceprofile" {
  name = "s3-mybucket-role"
  role = aws_iam_role.s3-mybucket-role.name   #an instance profile represents EC2 instances. The only permissions an EC2 instance profile has is the power to assume a role.
}

resource "aws_iam_role_policy" "s3-mybucket-role-policy" {
  name = "s3-mybucket-role-policy"
  role = aws_iam_role.s3-mybucket-role.id
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
              "s3:*"
            ],
            "Resource": [
              "arn:aws:s3:::mybucket-c29768df1",
              "arn:aws:s3:::mybucket-c29768df1/*"
            ]
        }
    ]
}
EOF
}
# resource "aws_iam_role_policy_attachment" "test-attach" {
#   role       = aws_iam_role.s3-mybucket-role.name
#   policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
# }
