#!/usr/bin/env bash

# Run shell-init for POSIX shell so that we have the correct PATHs, etc.
# We don't care about the completion so a POSIX shell init is  enough.
if [[ $RBENV_VERSION == chef-workstation ]]; then
  # check for chef-cli, which was renamed from chef binary starting workstation v0.10.41
  if [ -x "/opt/chef-workstation/bin/chef-cli" ]; then
    eval "$(/opt/chef-workstation/bin/chef-cli shell-init sh)"
  else
    eval "$(/opt/chef-workstation/bin/chef shell-init sh)"
  fi
fi
