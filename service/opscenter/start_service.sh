#!/bin/bash

PEG_ROOT=$(dirname ${BASH_SOURCE})/../..
source ${PEG_ROOT}/util.sh

# check input arguments
if [ "$#" -ne 1 ]; then
    echo "Please specify cluster name!" && exit 1
fi

CLUSTER_NAME=$1

MASTER_DNS=$(fetch_cluster_master_public_dns ${CLUSTER_NAME})
run_cmd_on_node ${MASTER_DNS} '. ~/.profile; $OPSCENTER_HOME/bin/opscenter'

echo "Opscenter Started complete!"
echo -e "${color_green}Opscenter WebUI${color_norm} is running at ${color_yellow}http://${MASTER_DNS}:8888${color_norm}"
