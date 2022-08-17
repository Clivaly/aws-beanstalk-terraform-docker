module "Production" {
  source = "../../Infra"

  nome = "Production"
  descricao = "Production-Application"
  max_size = 5
  machine = "t2.micro"
  env = "Production-Environment"
}