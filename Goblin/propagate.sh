projects=$(gcloud projects list --format json | jq -r '.[] | .projectId')
for project in $projects
do
	clusters_names=$(gcloud container clusters list --project $project --format json | jq -r '.[] | .name')
	clusters_zones=$(gcloud container clusters list --project $project --format json | jq -r '.[] | .zone')
	zone_l=""
	i=0
	for zone in $clusters_zones
	do
		zone_l[i]=$zone
		i=$((i+1))
	done
	i=0
	for cluster in $clusters_names
	do
		echo "-----------------------------------------"
		gcloud container clusters get-credentials $cluster --zone ${zone_l[i]} --project $project
		echo $project " : "$cluster
		#kubectl get pods
		i=$((i+1))
	done
done
