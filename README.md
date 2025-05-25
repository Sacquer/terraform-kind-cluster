## Overview

Kind cluster with NGINX Ingress using Terraform and Helm.

---

## Source

- [youtube.com](https://www.youtube.com/watch?v=Nm2c9xvGMpU)
- [nickjanetakis.com](https://nickjanetakis.com/blog/configuring-a-kind-cluster-with-nginx-ingress-using-terraform-and-helm)
- [registry.terraform.io](https://registry.terraform.io/providers/tehcyx/kind/latest)
-

---

## Commands Run

A few commands to interact with the cluster and destroy it:

```sh
./init.sh

kubectl get all -A

terraform destroy -auto-approve
```
