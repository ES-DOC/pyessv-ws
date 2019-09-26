#!/bin/bash

# Import utils.
source $PYESSV_WS_HOME/sh/utils.sh

# Main entry point.
main()
{
	export PYTHONPATH=$PYESSV_WS_HOME:$PYTHONPATH
	venv_path=${PYESSV_WS_VENV:-$PYESSV_WS_HOME/ops/venv}
	source $venv_path/bin/activate
	log "venv activated @ "$venv_path
}

# Invoke entry point.
main
