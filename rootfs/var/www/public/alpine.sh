#!/bin/sh
set -e
# 
# Usage:
# $ alpine.sh use <alpine_repo_url>
# $ alpine.sh restore
# 
# Using remote script execution:
# curl -fsSL http://dep.localhost:8642/alpine.sh | sh -s -- use http://dep.localhost:8642
# curl -fsSL http://dep.localhost:8642/alpine.sh | sh -s -- restore
# 
if [ ! -f "/etc/alpine-release" ]; then
    echo "This script is intended for Alpine Linux only!"
    exit 1
fi
if [ ! -f "/etc/apk/repositories" ]; then
    echo "No Alpine repositories found at /etc/apk/repositories"
    exit 1
fi
if [[ "${1}" == "use" ]]; then
    if [[ -z "${2}" ]]; then
        echo "Usage: $0 use <alpine_repo_url>"
        exit 1
    fi
    ALPINE_VERSION=$(cat /etc/alpine-release | cut -d. -f1,2)
    echo "Backing up current Alpine repositories to /etc/apk/repositories.original..."
    if [ ! -f "/etc/apk/repositories.original" ]; then
        cp /etc/apk/repositories /etc/apk/repositories.original
    fi
    echo "Setting up Alpine v${ALPINE_VERSION} repositories..."
    {
        echo ${2:-"http://dl-cdn.alpinelinux.org"}/alpine/v${ALPINE_VERSION}/main
        echo ${2:-"http://dl-cdn.alpinelinux.org"}/alpine/v${ALPINE_VERSION}/community
    } > /etc/apk/repositories
    echo "Successfully switched to \"${2}\" repositories!"
elif [[ "${1}" == "restore" ]]; then
    echo "Restoring original Alpine repositories..."
    if [ -f "/etc/apk/repositories.original" ]; then
        cp /etc/apk/repositories.original /etc/apk/repositories
        rm /etc/apk/repositories.original
        echo "Successfully restored original Alpine repositories!"
    else
        echo "No backup found at /etc/apk/repositories.original"
        exit 1
    fi
else
    echo "Usage: $0 <use|restore>"
    exit 1
fi
