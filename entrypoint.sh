#!/bin/bash
set -e

# remove rails process
if [ -e ./tmp/pids/*.pid ]; then rm ./tmp/pids/*.pid; fi

exec "$@"
