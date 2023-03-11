module "homolog" {
    source = "../../infra"

    nome_repositorio = "homolog"
    cargoIAM = "homolog"
    ambiante = "homolog"
    imagem="julioszeferino/go_ci:latest"
}

output "IP_alb" {
  value = module.homolog.IP
}