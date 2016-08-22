#!/bin/bash

echo "stopping running application"
ssh $DEPLOY_USER@$DEPLOY_HOST "docker stop test-hellophp"

echo "removing running application"
ssh $DEPLOY_USER@$DEPLOY_HOST "docker rm test-hellophp"

echo "logging in to registry"
ssh $DEPLOY_USER@$DEPLOY_HOST "docker login -u $DOCKER_USER -p $DOCKER_PASS -e "$DOCKER_EMAIL" quay.io"

echo "pulling latest version of the code"
ssh $DEPLOY_USER@$DEPLOY_HOST "docker pull quay.io/$CIRCLE_PROJECT_USERNAME/$CIRCLE_PROJECT_REPONAME:$CIRCLE_BRANCH"

echo "starting the new version"
ssh $DEPLOY_USER@$DEPLOY_HOST "docker run -d -p 8080:80 quay.io/$CIRCLE_PROJECT_USERNAME/$CIRCLE_PROJECT_REPONAME:$CIRCLE_BRANCH"

echo "success!"

exit 0
