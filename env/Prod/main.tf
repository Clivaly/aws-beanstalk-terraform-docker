module "Production" {
  source = "../../Infra"

  nome = "production"
  descricao = "production-application"
  max_size = 5
  machine = "t2.micro"
  env = "production-environment"
}