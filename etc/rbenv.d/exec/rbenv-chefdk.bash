#!/usr/bin/env bash

if [[ "$RBENV_VERSION" = chef-workstation ]]; then
  if [ -x "/opt/chef-workstation/bin/chef-cli" ]; then # check for chef-cli, which was renamed from chef binary starting workstation v0.10.41 
    eval "$(/opt/chef-workstation/bin/chef-cli shell-init $RBENV_SHELL)"
  else
    eval "$(/opt/chef-workstation/bin/chef shell-init $RBENV_SHELL)"
  fi
fi
