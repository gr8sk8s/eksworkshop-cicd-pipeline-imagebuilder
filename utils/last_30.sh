#!/usr/bin/env bash
[[ -z "$1" ]] && echo No String arg, exiting && exit 1

S="$1"
echo ${S: -30}