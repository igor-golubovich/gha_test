#!/bin/bash

ECR_REPOSITORY="gha_test"
VERSION_TAG="v0.1.0"



CHECK_VERSION_TAG=$(aws ecr describe-images --repository-name $ECR_REPOSITORY \
  --query 'imageDetails[].[imageTags]' | grep $VERSION_TAG | xargs | cut -d, -f1)

echo latest ECR version tag: $LATEST_VERSION_TAG
if [[ -n "$CHECK_VERSION_TAG" ]];
then
  echo Image to be tagged and put in version is already in version
  exit 1
else
echo "!!!"
fi