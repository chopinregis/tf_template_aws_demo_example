terraform{
  required_providers {
    aws={
      source = "hashicorp/aws"
    }
  }
    cloud {
        organization = "Regis_test_tf_aws"
      workspaces {
        name = "aws_demo_regis_learning"
      }
    }

}
