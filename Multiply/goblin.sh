#!/bin/bash
project=edo-securitylab
cluster_name=gke-so-lab02
zone=europe-west3-c
if [ "$1" = "init" ];
then
	echo "First Goblin"
	gcloud auth activate-service-account --key-file=edo-securitylab-47e0e0bfb796.json
	gcloud container clusters get-credentials $cluster_name --zone $zone --project $project
	kubectl get nodes
else
	echo "Multiply Goblin"
fi
