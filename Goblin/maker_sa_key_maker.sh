## Este script crea una service account en el projecto A y le da permisos para crear SA y Keys en un projecto B
gcloud beta iam service-accounts create $SAname --project $projectA
gcloud projects add-iam-policy-binding $projectB --member serviceAccount:$SAname@$projectA.iam.gserviceaccount.com --role roles/iam.serviceAccountAdmin
gcloud projects add-iam-policy-binding $projectB --member serviceAccount:$SAname@$projectA.iam.gserviceaccount.com --role roles/iam.serviceAccountKeyAdmin
gcloud iam service-accounts keys create key.json --iam-account $SAname@$projectA.iam.gserviceaccount.com
# Para eliminar SA
#gcloud iam service-accounts delete $SAname@$projectA.iam.gserviceaccount.com 
