#!/bin/bash

SCRIPTDIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

#start check
if [[ ! -f $SCRIPTDIR/vars.cfg ]]; then
    echo "File $SCRIPTDIR/vars.cfg not found"
    exit 1
fi
#finish check

# shellcheck source=/dev/null
source "$SCRIPTDIR"/vars.cfg

ipa-client-install --mkhomedir -N --no-dns-sshfp --enable-dns-updates -p "$PRINCIPAL" -w "$PRINCIPALPASS" -U
