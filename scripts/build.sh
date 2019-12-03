#!/usr/bin/env bash

SCRIPTSDIR=$(pwd)
ROOTDIR=${SCRIPTSDIR}/..

cp _exclude.yml ${ROOTDIR}

# for version in $(ls ../archive); do
#     yq w -i ${ROOTDIR}/_exclude.yml "exclude[+]" "${version}"
# done

cd ${ROOTDIR}

bundle exec jekyll build --config _config.yml,_exclude.yml -d archives/300

rm _exclude.yml