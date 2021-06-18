#!/bin/bash

# Exit on any error. More complex thing could be done in future
# (see https://stackoverflow.com/questions/4381618/exit-a-script-on-error)
set -e

# Reduce verbosity and disable Python buffering
export PYTHONWARNINGS=ignore
export TF_CPP_MIN_LOG_LEVEL=3
export PYTHONUNBUFFERED=on
export EXTENDED_TESTING=False

# Move to jovyan user home folder
cd /home/jovyan/notebooks

if [[ "x$@" == "x" ]] ; then
    
    # Start Jupyter as default
    echo -e  "Running Jupyter"

    jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token=''

else
    ENTRYPOINT_COMMAND=$@
    echo -n "Executing Docker entrypoint command: "
    echo $ENTRYPOINT_COMMAND
    exec /bin/bash -c "$ENTRYPOINT_COMMAND"
fi