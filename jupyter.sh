#!/bin/bash
set -e

if [[ "x$BUILD" != "xFalse" ]]; then

    # Build test environment
    echo -e "\n==============================="
    echo -e "|  Building Docker container  |"
    echo -e "===============================\n"

    if [[ "x$CACHE" == "xFalse" ]]; then
        docker build --no-cache . -t timeseria-notebooks
    else
        docker build . -t timeseria-notebooks
    fi
fi
            
# Start Jupyter
echo -e  "\n==============================="
echo -e  "|   Running Jupyter           |"
echo -e  "===============================\n"

if [[ "x$LIVE" == "xTrue" ]]; then
    echo "Running with live code changes"
    docker run -v $PWD:/home/jovyan/notebooks -p8888:8888 -it timeseria-notebooks
else
    echo "Running without live code changes. Use LIVE=True to enable them."
    docker run -p8888:8888 -it timeseria-notebooks
fi


