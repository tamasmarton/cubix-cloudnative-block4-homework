#!/bin/bash

environments=("dev" "test" "prod")

for env in "${environments[@]}"; do
  ns="hw4-$env"
  overlay_path="overlays/$env"

  echo "Deploying environment: $env"

  kubectl get namespace "$ns" >/dev/null 2>&1 || kubectl create namespace "$ns"
  kubectl apply -k "$overlay_path"

  echo "Deployment completed for $env"
  echo "-----------------------------------------"
done
