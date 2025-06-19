#!/bin/bash

environments=("dev" "test" "prod")

for env in "${environments[@]}"; do
  overlay_path="overlays/$env"

  echo "Deploying environment: $env"

  kubectl apply -k "$overlay_path"

  echo "Deployment completed for $env"
  echo "-----------------------------------------"
done
