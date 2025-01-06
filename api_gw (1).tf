# module.s3.aws_s3_bucket.cvs-tf-s3 will be created
  + resource "aws_s3_bucket" "cvs-tf-s3" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "aws_s3_bucket"
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags                        = {
          + "Environment" = "dev"
          + "Name"        = "My s3 Bucket"
        }
      + tags_all                    = {
          + "Env"         = "dev"
          + "Environment" = "dev"
          + "Managed_By"  = "terraform"
          + "Name"        = "My s3 Bucket"
          + "Project"     = "cvs"
          + "Service"     = "cvs-tf-core"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

  # module.s3.aws_s3_bucket_acl.cvs-tf-modules-acl will be created
  + resource "aws_s3_bucket_acl" "cvs-tf-modules-acl" {
      + acl    = "private"
      + bucket = (known after apply)
      + id     = (known after apply)
    }

  # module.s3.aws_s3_bucket_versioning.cvs-tf-modules-ver will be created
  + resource "aws_s3_bucket_versioning" "cvs-tf-modules-ver" {
      + bucket = (known after apply)
      + id     = (known after apply)

      + versioning_configuration {
          + mfa_delete = (known after apply)
          + status     = "Enabled"
        }
    }