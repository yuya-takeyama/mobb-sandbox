resource "aws_apprunner_service" "echo" {
  service_name = "echo"

  source_configuration {
    image_repository {
      image_configuration {
        port = "8080"
      }

      image_identifier      = "920373013500.dkr.ecr.ap-northeast-1.amazonaws.com/mobb/echo:0.0.20240916072508"
      image_repository_type = "ECR"
    }

    authentication_configuration {
      access_role_arn = "arn:aws:iam::920373013500:role/service-role/AppRunnerECRAccessRole"
    }

    auto_deployments_enabled = false
  }

  instance_configuration {
    cpu    = "256"
    memory = "512"
  }
}
