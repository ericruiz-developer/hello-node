export GCLOUD_PATH=~/google-cloud-sdk/bin/gcloud
${GCLOUD_PATH} docker -- push gcr.io/${GOOGLE_PROJECT_ID}/hello-node:v1
~/google-cloud-sdk/bin/kubectl run hello-node --image=gcr.io/${GOOGLE_PROJECT_ID}/hello-node:v1 --port=8080
~/google-cloud-sdk/bin/kubectl expose deployment hello-node --type=LoadBalancer
