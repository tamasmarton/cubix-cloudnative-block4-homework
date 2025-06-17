## General infos:

- Repo URL: [https://github.com/tamasmarton/cubix-cloudnative-block4-homework](https://github.com/tamasmarton/cubix-cloudnative-block4-homework)

### Install / deploy commands:

- `kind create cluster --name hw4-cluster --config kind-config.yaml`
- `kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.10.1/deploy/static/provider/kind/deploy.yaml --context kind-hw4-cluster`
- `kubectl label node hw4-cluster-control-plane ingress-ready=true --context kind-hw4-cluster`
- `sh deploy.sh`
