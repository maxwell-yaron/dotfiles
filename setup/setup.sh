#/usr/bin/env/bash --norc
set -eou pipefail

SCRIPT_DIR="$(builtin cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ ! -f /usr/bin/ansible-playbook ]; then
  sudo apt-get update
  sudo apt-get install --assume-yes ansible
fi

ansible-playbook "$SCRIPT_DIR/setup.playbook.yaml" --ask-become-pass --extra-vars="@$SCRIPT_DIR/setup.vars.yaml" "$@"
