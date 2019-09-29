#!/bin/bash

GIT_USER="dinagamal1"
GIT_EMAIL="dina.gamal1@vodafone.com"
upstream_repo_username="DinaGamalMahmoud"
upstream_repo_name="testrepo"
GITHUB_TOKEN="df4d8c981650cfe8dc9bd68ebd86760295d8204f"

git config --local user.email $GIT_EMAIL
git config --local user.name  $GIT_USER

git remote add upstream https://github.com/DinaGamalMahmoud/java-pipeline

git remote add origin https://github.com/dinagamal1/java-pipeline

curl -u $GIT_USER https://$GITHUB_TOKEN@api.github.com/repos/$upstream_repo_username/testrepo/forks -d ''

curl -u $GIT_USER https://$GITHUB_TOKEN@api.github.com/repos/$upstream_repo_username/java-pipeline/forks -d ''

git pull https://github.com/$GIT_USER/java-pipeline master



git pull https://github.com/dinagamal1/testrepo master trysubmodules

git submodule update --init --remote -- trysubmodules/testrepo

git add .
git commit -m "add readme"



git push https://github.com/dinagamal1/java-pipeline master

git remote add upstream https://github.com/DinaGamalMahmoud/java-pipeline
git remote -v

hub pull-request --base DinaGamalMahmoud:master --head dinagamal1:master
