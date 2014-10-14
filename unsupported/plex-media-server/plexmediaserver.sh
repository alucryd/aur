#!/bin/sh

export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export LD_LIBRARY_PATH="${PLEX_MEDIA_SERVER_HOME}"
export TMPDIR="${PLEX_MEDIA_SERVER_TMPDIR}"

exec /opt/plexmediaserver/Plex\ Media\ Server
