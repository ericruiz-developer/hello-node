export GCLOUD_PATH=~/google-cloud-sdk/bin/gcloud
echo ${GOOGLE_AUTH} | base64 --decode -i > ${HOME}/gcp-key.json
${GCLOUD_PATH} --quiet auth activate-service-account --key-file ${HOME}/sdfgsdfg.json
${GCLOUD_PATH} --quiet config set project ${GOOGLE_PROJECT_ID}
${GCLOUD_PATH} --quiet config set container/cluster ${GOOGLE_CLUSTER_NAME}
${GCLOUD_PATH} --quiet config set compute/zone ${GOOGLE_COMPUTE_ZONE}
${GCLOUD_PATH} --quiet config set container/use_application_default_credentials true
${GCLOUD_PATH} --quiet config set container/use_client_certificate true
${GCLOUD_PATH} container clusters get-credentials ${GOOGLE_CLUSTER_NAME}