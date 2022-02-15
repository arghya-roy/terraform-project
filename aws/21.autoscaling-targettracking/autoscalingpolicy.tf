
resource "aws_autoscaling_policy" "example" {
  name = "example"
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }

    target_value = 20.0
  }
    autoscaling_group_name = aws_autoscaling_group.example-autoscaling.name
    policy_type            = "TargetTrackingScaling"
}