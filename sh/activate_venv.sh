#!/bin/bash

# Import utils.
source $PYESSV_WS_HOME/sh/utils.sh

# Main entry point.
main()
{
	ls $PYESSV_WS_HOME/ops/venv/bin/activate
	source $PYESSV_WS_HOME/ops/venv/bin/activate
}

# Invoke entry point.
main
