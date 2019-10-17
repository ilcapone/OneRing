#gcloud beta iam service-accounts create $1 --project $2
#gcloud projects add-iam-policy-binding $2 --member serviceAccount:$1@$2.iam.gserviceaccount.com --role roles/container.developer
#gcloud iam service-accounts keys create ~/key.json --iam-account $1@$2.iam.gserviceaccount.com
gcloud organizations add-iam-policy-binding 80431372572--member=serviceAccount:$1 --role roles/browser
gcloud projects add-iam-policy-binding $2 --member serviceAccount:$2 --role roles/container.developer
