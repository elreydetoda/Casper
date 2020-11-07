#!/usr/bin/env bash

set -${-//[sc]/}eu${DEBUG+xv}o pipefail

function run_build(){

    docker container run --rm -it -v "${PWD}/dist/":/app/dist/   casper

}

function move_zip(){

    dist_folder="${PWD}/dist"
    new_theme="${dist_folder}/$(date -Iseconds)_casper-personal.zip"
    mv "${dist_folder}/casper.zip" "${new_theme}"
    ln -sf "${new_theme}" "${dist_folder}/casper-personal.zip"

}

function main(){

  run_build
  move_zip

}

if [[ "${0}" = "${BASH_SOURCE[0]}" ]] ; then
  main "${@}"
fi
