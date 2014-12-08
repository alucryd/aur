#!/bin/sh

export LD_LIBRARY_PATH="${PLEX_MEDIA_SERVER_HOME}"
export TMPDIR="${PLEX_MEDIA_SERVER_TMPDIR}"

exec /opt/plexmediaserver/Plex\ Media\ Server
