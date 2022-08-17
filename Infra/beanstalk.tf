resource "aws_elastic_beanstalk_application" "beanstalk_application" {
  name        = var.nome
  description = var.descricao
}

resource "aws_elastic_beanstalk_environment" "beanstalk_environment" {
  name                = var.env
  application         = aws_elastic_beanstalk_application.beanstalk_application.name
  solution_stack_name = "64bit Amazon Linux 2 v3.4.18 running Docker"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name = "InstanceType"
    value = var.machine
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name = "MaxSize"
    value = var.max_size
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name = "IamInstanceProfile"
    value = aws_iam_instance_profile.beanstalk_ec2_profile.name
  }
}

resource "aws_elastic_beanstalk_application_version" "default" {
  depends_on = [
    aws_elastic_beanstalk_environment.beanstalk_environment,
    aws_elastic_beanstalk_application.beanstalk_application,
    aws_s3_bucket_object.beanstalk_docker
  ]
  name        = var.env
  application = var.nome
  description = var.descricao
  bucket      = aws_s3_bucket.beanstalk_deploys.id
  key         = aws_s3_bucket_object.beanstalk_docker.id
}