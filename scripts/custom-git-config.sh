#!/bin/bash

remote_url=$(git remote get-url origin)

if [[ "$remote_url" == *"github.com"* ]]; then
    git "$@"
elif [[ "$remote_url" == *"github.com-private"* ]]; then
    git config user.email "jonasriedel@pm.me"
    git config user.name "Jonas Riedel"
    git "$@"
else
    git "$@"
fi
