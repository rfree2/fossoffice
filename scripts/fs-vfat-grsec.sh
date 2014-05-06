#!/bin/bash

# Script load kernel modules needed to mount disk with vfat filesystem

set -x
modprobe fs-vfat
modprobe nls_cp437
modprobe nls_utf8
set +x
