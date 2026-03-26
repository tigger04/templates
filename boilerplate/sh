#!/usr/bin/env bash

#shellcheck source=shell-and-scripting-helpers/.qfuncs.sh
source ~/.qfuncs.sh

set -e -o pipefail
shopt -s dotglob lastpipe

if [ $# -eq 0 ] || [[ $1 =~ ^--?h(elp)?$ ]]; then
   cat - <<EOM
USAGE:
   $cmd_base ARG [ARG]
WHERE:

DEFAULT:

EOM
   exit 1
fi
