#!/usr/bin/env bash

set -${-//[sc]/}eu${DEBUG+xv}o pipefail

function main(){

    if [[ $(docker image ls -q node:lts | wc -l) -eq 0 ]] ; then
      docker pull node:lts
    fi
    docker build --pull --rm -f "Dockerfile" "${@}" -t casper:latest "${PWD}"

}

if [[ "${0}" = "${BASH_SOURCE[0]}" ]] ; then
  main "${@}"
fi
