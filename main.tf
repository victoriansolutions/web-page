
# --------------------------------------------------------------------------------------------------
# Set up web page recorder and let it publish results and send notifications.
# --------------------------------------------------------------------------------------------------

resource "aws_sns_topic" "config" {
  name = "config-mgmt-notifications"
}

resource "aws_config_configuration_recorder" "recorder" {
  name = "config-mgmt"

  role_arn = var.iam_role_arn

  recording_group {
    all_supported                 = "true"
    include_global_resource_types = var.include_global_resource_types
  }
}

resource "aws_config_delivery_channel" "bucket" {
  name = "default"

  s3_bucket_name = var.bucket_name
  s3_key_prefix  = "config"
  sns_topic_arn  = aws_sns_topic.config.arn

  snapshot_delivery_properties {
    delivery_frequency = "One_Hour"
  }

  depends_on = [aws_config_configuration_recorder.recorder]
}

resource "aws_config_configuration_recorder_status" "recorder" {
  name = aws_config_configuration_recorder.recorder.name

  is_enabled = true
  depends_on = [aws_config_delivery_channel.bucket]
}
