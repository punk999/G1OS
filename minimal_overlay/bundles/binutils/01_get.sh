#!/bin/sh

set -e

. ../../common.sh

# Read the 'coreutils' download URL from '.config'.
DOWNLOAD_URL=`read_property BINUTILS_SOURCE_URL`

# Grab everything after the last '/' character.
ARCHIVE_FILE=${DOWNLOAD_URL##*/}

# Download 'coreutils' source archive in the 'source/overlay' directory.
download_source $DOWNLOAD_URL $OVERLAY_SOURCE_DIR/$ARCHIVE_FILE

# Extract all 'coreutils' sources in the 'work/overlay/coreutils' directory.
extract_source $OVERLAY_SOURCE_DIR/$ARCHIVE_FILE binutils

cd $SRC_DIR
