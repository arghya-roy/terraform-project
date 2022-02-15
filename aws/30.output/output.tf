output "arn" {
  value = "${var.os-type == "alm" ? aws_instance.alm[0].arn : aws_instance.ubuntu[0].arn}"
}
output "tags_all" {
  value = "${var.os-type == "alm" ? aws_instance.alm[0].tags_all : aws_instance.ubuntu[0].tags_all}"
}