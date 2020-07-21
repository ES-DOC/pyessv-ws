#!/bin/bash

# Import utils.
source $PYESSV_WS_HOME/sh/utils.sh

# Main entry point.
main()
{
	pushd $PYESSV_WS_HOME
	pipenv run python $PYESSV_WS_HOME/sh/app_run.py
}

# Invoke entry point.
main
