export GCLOUD_PATH=/opt/google-cloud-sdk/bin/gcloud
export CLOUDSDK_CORE_DISABLE_PROMPTS=1
${GCLOUD_PATH} version
${GCLOUD_PATH} components update
${GCLOUD_PATH} components update kubectl
