output "sagemaker_image_versions_id" {
  description = "Map of id values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sagemaker_image_versions_aliases" {
  description = "Map of aliases values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.aliases if v.aliases != null && length(v.aliases) > 0 }
}
output "sagemaker_image_versions_arn" {
  description = "Map of arn values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sagemaker_image_versions_base_image" {
  description = "Map of base_image values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.base_image if v.base_image != null && length(v.base_image) > 0 }
}
output "sagemaker_image_versions_container_image" {
  description = "Map of container_image values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.container_image if v.container_image != null && length(v.container_image) > 0 }
}
output "sagemaker_image_versions_horovod" {
  description = "Map of horovod values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.horovod if v.horovod != null }
}
output "sagemaker_image_versions_image_arn" {
  description = "Map of image_arn values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.image_arn if v.image_arn != null && length(v.image_arn) > 0 }
}
output "sagemaker_image_versions_image_name" {
  description = "Map of image_name values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.image_name if v.image_name != null && length(v.image_name) > 0 }
}
output "sagemaker_image_versions_job_type" {
  description = "Map of job_type values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.job_type if v.job_type != null && length(v.job_type) > 0 }
}
output "sagemaker_image_versions_ml_framework" {
  description = "Map of ml_framework values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.ml_framework if v.ml_framework != null && length(v.ml_framework) > 0 }
}
output "sagemaker_image_versions_processor" {
  description = "Map of processor values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.processor if v.processor != null && length(v.processor) > 0 }
}
output "sagemaker_image_versions_programming_lang" {
  description = "Map of programming_lang values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.programming_lang if v.programming_lang != null && length(v.programming_lang) > 0 }
}
output "sagemaker_image_versions_region" {
  description = "Map of region values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_image_versions_release_notes" {
  description = "Map of release_notes values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.release_notes if v.release_notes != null && length(v.release_notes) > 0 }
}
output "sagemaker_image_versions_vendor_guidance" {
  description = "Map of vendor_guidance values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.vendor_guidance if v.vendor_guidance != null && length(v.vendor_guidance) > 0 }
}
output "sagemaker_image_versions_version" {
  description = "Map of version values across all sagemaker_image_versions, keyed the same as var.sagemaker_image_versions"
  value       = { for k, v in aws_sagemaker_image_version.sagemaker_image_versions : k => v.version if v.version != null }
}

