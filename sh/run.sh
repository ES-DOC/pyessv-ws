#!/bin/bash

# Import utils.
source $PYESSV_WS_HOME/sh/utils.sh

# Main entry point.
main()
{
    log "running ..."$PYESSV_WS_HOME

	source $PYESSV_WS_HOME/sh/activate_venv.sh
	python $PYESSV_WS_HOME/sh/run.py
}

# Invoke entry point.
main
