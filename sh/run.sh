#!/bin/bash

# Import utils.
source $PYESSV_WS_HOME/sh/utils.sh

# Main entry point.
main()
{
	source $PYESSV_WS_HOME/sh/activate_venv.sh
	python $PYESSV_WS_HOME/sh/run.py
}

# Invoke entry point.
main
