#!/usr/bin/env bash

__apt_get_install_pkgs() {
  PKGS_FILE="${1:-pkgs}"

  while read -r PKG; do
    command apt-get --yes install "$PKG"
  done <<< "$(cat "$PKGS_FILE")"
}

__apt_get_install_pkgs
