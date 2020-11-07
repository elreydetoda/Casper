#!/usr/bin/env bash

set -${-//[sc]/}eu${DEBUG+xv}o pipefail

function main(){

    docker pull node:lts
    docker build --pull --rm -f "Dockerfile" -t casper:latest "${PWD}"

}

if [[ "${0}" = "${BASH_SOURCE[0]}" ]] ; then
  main "${@}"
fi
