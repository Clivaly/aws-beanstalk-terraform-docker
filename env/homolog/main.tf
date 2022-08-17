module "Homolog" {
  source = "../../Infra"

  nome = "Homolog"
  descricao = "Homolog-Application"
  max_size = 2
  machine = "t2.micro"
  env = "Homolog-Environment"
}