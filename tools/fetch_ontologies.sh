#!/usr/bin/env bash

# Requires robot to be installed
command -v wget 1> /dev/null 2>&1 || \
  { echo >&2 "requires wget, but it's not installed. Aborting."; exit 1; }

# Start by assuming it was the path invoked.
THIS_SCRIPT="$0"

# Handle resolving symlinks to this script.
# Using ls instead of readlink, because bsd and gnu flavors
# have different behavior.
while [ -h "$THIS_SCRIPT" ] ; do
  ls=`ls -ld "$THIS_SCRIPT"`
  # Drop everything prior to ->
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    THIS_SCRIPT="$link"
  else
    THIS_SCRIPT=`dirname "$THIS_SCRIPT"`/"$link"
  fi
done

# Get path to the scripts directory.
SCRIPT_DIR=$(dirname "${THIS_SCRIPT}")
IMPORTS=$SCRIPT_DIR/../imports/
PSDO='https://raw.githubusercontent.com/Display-Lab/psdo/master/psdo.owl'
CPO='https://raw.githubusercontent.com/Display-Lab/cpo/master/cpo.owl'

# get DISPLAY LAB ontologies
wget 'https://raw.githubusercontent.com/Display-Lab/psdo/master/psdo.owl' -P $IMPORTS
wget 'https://raw.githubusercontent.com/Display-Lab/cpo/master/cpo.owl' -P $IMPORTS
