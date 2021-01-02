#!/bin/bash
set -e

if [[ "x$BUILD" != "xFalse" ]]; then

    # Build test environment
    echo -e "\n==============================="
    echo -e "|  Building env container     |"
    echo -e "===============================\n"

    if [[ "x$CACHE" == "xFalse" ]]; then
        docker build --no-cache . -t timeseria_jupyter_container
    else
        docker build . -t timeseria_jupyter_container
    fi
fi
            
# Start testing
echo -e  "\n==============================="
echo -e  "|   Running Jupyter           |"
echo -e  "===============================\n"

# Reduce verbosity and disable Python buffering
ENV_VARS="PYTHONWARNINGS=ignore TF_CPP_MIN_LOG_LEVEL=3 PYTHONUNBUFFERED=on EXTENDED_TESTING=False LOGLEVEL=$LOGLEVEL"

docker run -p8888:8888 -it timeseria_jupyter_container /bin/bash -c "$ENV_VARS && jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token=''"


