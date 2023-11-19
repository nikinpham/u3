#!/bin/bash

# Add the Bitnami Helm repository
helm repo add udacity-prj3 https://charts.bitnami.com/bitnami && helm repo update &&\

# Install PostgreSQL
helm install --set primary.persistence.enabled=false udacity-postgres udacity-prj3/postgresql