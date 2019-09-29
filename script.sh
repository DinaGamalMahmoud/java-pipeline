#!/bin/bash

GIT_USER="dinagamal1"
GIT_EMAIL="dina.gamal1@vodafone.com"
upstream_repo_username="DinaGamalMahmoud"
upstream_repo_name="testrepo"
GITHUB_TOKEN="df4d8c981650cfe8dc9bd68ebd86760295d8204f"

git config --local user.email $GIT_EMAIL
git config --local user.name  $GIT_USER

curl -u $GIT_USER https://$GITHUB_TOKEN@api.github.com/repos/$upstream_repo_username/testrepo/forks -d ''

curl -u $GIT_USER https://$GITHUB_TOKEN@api.github.com/repos/$upstream_repo_username/java-pipeline/forks -d ''

git clone https://github.com/$GIT_USER/java-pipeline

git clone https://github.com/$GIT_USER/testrepo trysubmodules/


git submodule update --init --remote -- trysubmodules/testrepo

git add .
git commit -m "update submodule"



git push https://github.com/dinagamal1/java-pipeline master

git remote add upstream https://github.com/DinaGamalMahmoud/java-pipeline

git remote add origin https://github.com/dinagamal1/java-pipeline


git request-pull origin/master upstream/master



