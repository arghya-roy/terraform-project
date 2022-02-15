resource "aws_iam_user" "names" {
name = var.user_names[count.index]
count = length(var.user_names)
  path = "/system/"

  tags = {
    name = var.tag_values[count.index]
    count = length(var.tag_values)
  }
}