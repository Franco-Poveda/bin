#!/bin/bash
export KUBECFG_JPATH=$HOME/work/src/github.com/ksonnet/ksonnet-lib
jsonnet -J $KUBECFG_JPATH "$@"
