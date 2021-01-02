#!/bin/bash
set -e

cd /home/jovyan/notebooks

echo "Executing \"$@\""

exec "$@"
