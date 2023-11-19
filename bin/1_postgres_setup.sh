#!/bin/bash

# Add the Bitnami Helm repository
helm repo add u3-cluster https://charts.bitnami.com/bitnami && helm repo update &&\

# Install PostgreSQL
helm install --set primary.persistence.enabled=false udacity u3-cluster/postgresql