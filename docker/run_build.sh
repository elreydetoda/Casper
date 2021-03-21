#!/usr/bin/env bash

set -${-//[sc]/}eu${DEBUG+xv}o pipefail

function run_build(){

    docker container run --rm -it -v "${PWD}/dist/":/app/dist/   casper "${@}"

}

function move_zip(){

    dist_folder="${PWD}/dist"
    new_theme="${dist_folder}/${current_branch:-}$(date -Iseconds)_casper-personal.zip"
    theme_link="${dist_folder}/${current_branch:-}casper-personal.zip"
    mv "${dist_folder}/casper.zip" "${new_theme}"
    ln -sf "${new_theme}" "${theme_link}"
    ls "${theme_link}"

}

function branch_check(){
  if [[ "$(git branch --show-current)" == feat/* ]]; then
    current_branch='dev-'
  fi
}

function main(){

  run_build "${@}"
  branch_check
  move_zip

  echo "checkout https://gscan.ghost.org/ to check your theme"

}

if [[ "${0}" = "${BASH_SOURCE[0]}" ]] ; then
  main "${@}"
fi
