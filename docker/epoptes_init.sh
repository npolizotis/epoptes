#!/bin/bash
set -euxo pipefail

DEBUG=${DEBUG:-} /usr/bin/twistd3 --nodaemon --pidfile= epoptes &
sleep 1
epoptes