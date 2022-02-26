resource "aws_ec2_tag" "ec2-name-tag" {
  count       = length(local.ALL_TAG_IDS)
  resource_id = local.ALL_TAG_IDS[count.index]
  key         = "Name"
  value       = local.TAG_NAME
}