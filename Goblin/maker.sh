sa_name=$1
project_id=$2
org=$3
echo $sa_name $project_id $org
echo "Creating SA"
gcloud beta iam service-accounts create $sa_name --project $project_id
echo "Binding Browser Role or level"
gcloud organizations add-iam-policy-binding $org --member=serviceAccount:$sa_name@$project_id.iam.gserviceaccount.com --role roles/browser
echo "Extractig list projects"
projects=$(gcloud projects list --format json | jq -r '.[] | .projectId')
for project in $projects
do
	echo "Binding contaier role in $project"
	gcloud projects add-iam-policy-binding $project --member serviceAccount:$sa_name@$project_id.iam.gserviceaccount.com --role roles/container.developer
done
echo "Download JSON Key"
gcloud iam service-accounts keys create ~/key.json --iam-account $sa_name@$project_id.iam.gserviceaccount.com
gcloud auth activate-service-account --key-file ~/key.json
gcloud auth list
