#!/bin/bash

kubectl apply -f namespace.yml
kubectl apply -f mongo-service.yml
kubectl apply -f mongo-stateful.yml
kubectl apply -f backend-deployment.yml
kubectl apply -f backend-service.yml
kubectl apply -f client-deployment.yml
kubectl apply -f client-service.yml