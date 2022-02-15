
resource "aws_iam_group" "group_name" {
  name = "group1"
}
resource "aws_iam_group" "group_name2" {
  name = "demo"
}

resource "aws_iam_policy_attachment" "name1" {
  name       = "name1"
  groups     = [aws_iam_group.group_name2.name]
  users      = [aws_iam_user.arghya_name.name,aws_iam_user.arghya_name2.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}


resource "aws_iam_group_membership" "administrators-users" {
  name = "administrators-users"
  users = [
    aws_iam_user.arghya_name.name,
    aws_iam_user.arghya_name2.name,
  ]
  group = aws_iam_group.group_name.name
}

# output "warning" {
#   value = "WARNING: make sure you're not using the AdministratorAccess policy for other users/groups/roles. If this is the case, don't run terraform destroy, but manually unlink the created resources"
# }



resource "aws_iam_user" "arghya_name" {
  name = "arghya"
  path = "/system/"
}

resource "aws_iam_access_key" "key" {
  user    = aws_iam_user.arghya_name.name
}
resource "aws_iam_user" "arghya_name2" {
  name = "arghya2"
  path = "/system/"
}

resource "aws_iam_access_key" "key2" {
  user    = aws_iam_user.arghya_name2.name
}
