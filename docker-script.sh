#!/bin/sh
set -x 
cd ${TANZU_BUILD_WORKSPACE_DIR}
ls -l 
pwd 
ls -dl 
git clone https://github.com/mhoshi-vm/tanzu-build-add-sidecar.git kustomize 
kustomize build --load-restrictor LoadRestrictionsNone kustomize -o output/app-config/deployment.yml
