#!/bin/bash

cd "${0%/*}" || exit 1
source ./shared_kubernetes.sh
cd -

terraform init
terraform plan
terraform destroy
