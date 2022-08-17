module "Homolog" {
  source = "../../Infra"

  nome = "homolog"
  descricao = "homolog-application"
  max_size = 2
  machine = "t2.micro"
  env = "homolog-environment"
}