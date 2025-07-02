#!/bin/sh -e
WORKDIR=${1:-`pwd`}
if [ $# -gt 0 ]; then
  shift
fi
if [ $# -eq 0 ]; then
  GOAL=package
else
  GOAL=$@
fi
export HOME=/var/lib/pebble/default
(cd $WORKDIR && /usr/share/maven/bin/mvn $GOAL)
