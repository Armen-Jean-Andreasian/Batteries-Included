#!/bin/bash

# Installs or updates not-gitmodules based on a YAML configuration file.
#
# Arguments: not_gitmodules_yaml_path (default: notgitmodules.yaml): The path to the notgitmodules.yaml file.
function install_not_gitmodules() {
  local not_gitmodules_yaml_path="${1:-notgitmodules.yaml}"
    not_gitmodules -y "${not_gitmodules_yaml_path}"
}
