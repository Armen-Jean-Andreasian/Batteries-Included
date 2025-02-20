#!/bin/bash

# Installs Python dependencies locally
#
# Arguments:
# - path_to_requirements_txt (default: requirements.txt): The path to the requirements.txt file.
function install_pip_requirements() {
  local path_to_requirements_txt="${1:-requirements.txt}"

  # Install the requirements
  pip install -r "${path_to_requirements_txt}"
}
