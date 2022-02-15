
# resource "aws_iam_group" "administrators" {
#   name = "administrators"
# }

# resource "aws_iam_policy_attachment" "administrators-attach" {
#   name       = "administrators-attach"
#   groups     = [aws_iam_group.administrators.name]
#   policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
# }

# resource "aws_iam_user" "admin1" {
#   name = "admin1"
# }

# resource "aws_iam_user" "admin2" {
#   name = "admin2"
# }

# resource "aws_iam_group_membership" "administrators-users" {
#   name = "administrators-users"
#   users = [
#     aws_iam_user.admin1.name,
#     aws_iam_user.admin2.name,
#   ]
#   group = aws_iam_group.administrators.name
# }

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


resource "aws_iam_user_login_profile" "example" {
  user    = aws_iam_user.arghya_name.name
  pgp_key = "keybase:some_person_that_exists"
}