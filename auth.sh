export GCLOUD_PATH=/opt/google-cloud-sdk/bin/gcloud
echo ${GOOGLE_AUTH} | base64 --decode -i > ${HOME}/gcp-key.json
${GCLOUD_PATH} auth activate-service-account --key-file=${HOME}/gcp-key.json
${GCLOUD_PATH} config set project ${GOOGLE_PROJECT_ID}
${GCLOUD_PATH} config set container/cluster ${GOOGLE_CLUSTER_NAME}
${GCLOUD_PATH} config set compute/zone ${GOOGLE_COMPUTE_ZONE}
${GCLOUD_PATH} config set container/use_application_default_credentials true
${GCLOUD_PATH} config set container/use_client_certificate true
${GCLOUD_PATH} container clusters get-credentials ${GOOGLE_CLUSTER_NAME}
