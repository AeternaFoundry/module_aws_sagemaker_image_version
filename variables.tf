variable "sagemaker_image_versions" {
  description = <<EOT
Map of sagemaker_image_versions, attributes below
Required:
    - base_image
    - image_name
Optional:
    - aliases
    - horovod
    - job_type
    - ml_framework
    - processor
    - programming_lang
    - region
    - release_notes
    - vendor_guidance
EOT

  type = map(object({
    base_image       = string
    image_name       = string
    aliases          = optional(set(string))
    horovod          = optional(bool)
    job_type         = optional(string)
    ml_framework     = optional(string)
    processor        = optional(string)
    programming_lang = optional(string)
    region           = optional(string)
    release_notes    = optional(string)
    vendor_guidance  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_image_versions : (
        v.ml_framework == null || (can(regex("^[a-zA-Z]+ ?\\d+\\.\\d+(\\.\\d+)?$", v.ml_framework)))
      )
    ])
    error_message = ""
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_image_versions : (
        v.programming_lang == null || (can(regex("^[a-zA-Z]+ ?\\d+\\.\\d+(\\.\\d+)?$", v.programming_lang)))
      )
    ])
    error_message = ""
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_image_versions : (
        v.release_notes == null || (length(v.release_notes) >= 0 && length(v.release_notes) <= 255)
      )
    ])
    error_message = "must be between 0 and 255 characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

