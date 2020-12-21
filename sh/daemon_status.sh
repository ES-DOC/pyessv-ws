#!/bin/bash

# Import utils.
source $PYESSV_WS_HOME/sh/utils.sh

# Main entry point.
main()
{
	pushd $PYESSV_WS_HOME
	supervisorctl -c $PYESSV_WS_HOME/ops/config/supervisord.conf status all
	popd
}

# Invoke entry point.
main
