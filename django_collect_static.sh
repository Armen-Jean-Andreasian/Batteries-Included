#!/bin/bash

# Collect static files for Django
#
# Info: You need to set STATIC_ROOT in settings.py to the destination folder before running this script.
# Args:
# - destination (optional) - the destination folder for the static files. The script won't collect the static files if the folder already exists.
function collect_static() {
  local destination="$1"
  # Checking if the destination was given and exists
  if [[ -n "$destination" && -d "$destination" ]]; then
      echo "Static files already packed in $destination."
  else
      python manage.py collectstatic --noinput # Collect static files without asking for confirmation
  fi
}
