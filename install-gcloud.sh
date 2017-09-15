export GCLOUD_PATH=~/google-cloud-sdk/bin/gcloud
export CLOUDSDK_CORE_DISABLE_PROMPTS=1
curl https://sdk.cloud.google.com | bash
${GCLOUD_PATH} version
${GCLOUD_PATH} components update
${GCLOUD_PATH} components update kubectl