#!/usr/bin/env bash

set -${-//[sc]/}eu${DEBUG+xv}o pipefail

function main(){

  docker/build_docker.sh
  docker/run_build.sh

}

if [[ "${0}" = "${BASH_SOURCE[0]}" ]] ; then
  main "${@}"
fi
