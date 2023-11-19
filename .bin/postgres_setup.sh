#!/bin/bash

# Add the Bitnami Helm repository
helm repo add $1 https://charts.bitnami.com/bitnami && helm repo update &&\

# Install PostgreSQL
helm install --set primary.persistence.enabled=false $2 $1/postgresql