#!/bin/bash

# shellcheck source=./uninstall-common.sh
source "$(dirname "$0")/uninstall-common.sh" "$@"

function main() {

  echo "Uninstalling Qt and GTK HiDPI modifications"
  sudo_rem_file "/etc/profile.d/hidpi.sh"

}

if show_warning "HiDPI modifications" "$@"; then
  main "$@"
fi
