provider "helm" {
  kubernetes {
    config_path = pathexpand(var.kind_cluster_config_path)
  }
  alias = "helm_argo_cd_provider"
}

resource "helm_release" "argocd" {
  name = "argocd"

  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
  version          = "7.9.1"

  values = [file("argocd.yaml")]

  depends_on = [kind_cluster.default, helm_release.ingress_nginx]
}
