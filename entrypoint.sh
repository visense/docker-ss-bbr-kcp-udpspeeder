#!/bin/bash

SS_CONFIG=${SS_CONFIG:-""}
SS_MODULE=${SS_MODULE:-""}
KCP_CONFIG=${KCP_CONFIG:-""}
KCP_MODULE=${KCP_MODULE:-""}
UDPSPEEDER_MODULE="speederv2"
UDPSPEEDER_CONFIG=${UDPSPEEDER_CONFIG:-""}
UDP2RAW_MODULE="udp2raw"
UDP2RAW_CONFIG_ONE=${UDP2RAW_CONFIG_ONE:-""}
UDP2RAW_CONFIG_TWO=${UDP2RAW_CONFIG_TWO:-""}

while getopts "S:s:K:k:u:t:T:" OPT; do
    case $OPT in
        S)
            SS_CONFIG=$OPTARG;;
        s)
            SS_MODULE=$OPTARG;;
        K)
            KCP_CONFIG=$OPTARG;;
        k)
            KCP_MODULE=$OPTARG;;
        u)
            UDPSPEEDER_CONFIG=$OPTARG;;
        t)
            UDP2RAW_CONFIG_ONE=$OPTARG;;
        T)
            UDP2RAW_CONFIG_TWO=$OPTARG;;
    esac
done

export SS_CONFIG=${SS_CONFIG}
export SS_MODULE=${SS_MODULE}
export KCP_CONFIG=${KCP_CONFIG}
export KCP_MODULE=${KCP_MODULE}
export UDPSPEEDER_MODULE=${UDPSPEEDER_MODULE}
export UDPSPEEDER_CONFIG=${UDPSPEEDER_CONFIG}
export UDP2RAW_MODULE=${UDP2RAW_MODULE}
export UDP2RAW_CONFIG_ONE=${UDP2RAW_CONFIG_ONE}
export UDP2RAW_CONFIG_TWO=${UDP2RAW_CONFIG_TWO}
export delay=0

exec runsvdir -P /etc/service
