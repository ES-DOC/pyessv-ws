#!/bin/bash

# Import utils.
source $PYESSV_WS_HOME/sh/utils.sh

# Main entry point.
main()
{
	source $PYESSV_WS_HOME/sh/daemon_stop.sh
	source $PYESSV_WS_HOME/sh/daemon_start.sh
}

# Invoke entry point.
main
