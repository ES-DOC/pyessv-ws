#!/bin/bash

# Import utils.
source $PYESSV_WS_HOME/sh/utils.sh

# Main entry point.
main()
{
	_install_ops_dir
	_install_config
	_install_venv
	log "web-service installed"
}

_install_ops_dir()
{
	mkdir -p $PYESSV_WS_HOME/ops
	mkdir -p $PYESSV_WS_HOME/ops/config
	mkdir -p $PYESSV_WS_HOME/ops/daemon
	mkdir -p $PYESSV_WS_HOME/ops/logs
	log "ops directory installed"
}

_install_config()
{
	cp $PYESSV_WS_HOME/resources/*.conf $PYESSV_WS_HOME/ops/config
	log "configuration files installed"
}

_install_venv()
{
    log "installing virtual environment ..."

    # ... install venv using system pip.
    pip2 install --upgrade pip
    pip2 install --upgrade virtualenv
    virtualenv $PYESSV_WS_HOME/ops/venv

    # ... install dependencies.
    source $PYESSV_WS_HOME/sh/activate_venv.sh
    pip2 install --upgrade pip
    pip2 install --upgrade --no-cache-dir -I -r $PYESSV_WS_HOME/resources/requirements.txt

    deactivate
	log "virtual environment installed"
}

# Invoke entry point.
main