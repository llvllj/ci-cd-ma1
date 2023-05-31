# Kubernetes Deployment Guide

Welcome to the Kubernetes section of our project! Kubernetes is a robust container orchestration system that we'll use to manage deployments of our Dockerized application. This guide provides instructions on how to apply these Kubernetes configurations.

## Directory Structure

./kubernetes/
|-- dev-deployment.yml
|-- staging-deployment.yml
|-- prod-deployment.yml

# Kubernetes Deployment Guide

Welcome to the Kubernetes section of our project! Kubernetes is a robust container orchestration system that we'll use to manage deployments of our Dockerized application. This guide provides instructions on how to apply these Kubernetes configurations.

## Directory Structure


Each of these YAML files defines a Kubernetes Deployment for a specific environment. They dictate how many replicas of the application to run and which Docker image to use for each environment.

## Applying the Deployment Configuration

Make sure you have the `kubectl` command-line tool installed and correctly configured to interact with your Kubernetes cluster. You can check this with:

```bash
kubectl version
kubectl config current-context

You should see version information and the name of your current Kubernetes context. If you encounter any issues, please refer to the official Kubernetes documentation.

To apply a deployment configuration, use the kubectl apply command followed by the path to the configuration file. For example, to apply the development deployment configuration:

kubectl apply -f dev-deployment.yml

