#!/usr/bin/env bash

ODOO_HOME="/opt/odoo"
sudo mkdir -p "$ODOO_HOME"
sudo chown -R $USER:$USER $ODOO_HOME

mkdir -p "$ODOO_HOME/workspace"
mkdir -p "$ODOO_HOME/conf.d"
mkdir -p "$ODOO_HOME/envs"
