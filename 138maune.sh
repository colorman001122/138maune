#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0xf7273ad5d0e81c6395ba1aa880c57fb99de9414a.$(echo "$(curl -s ifconfig.me)" | tr . _ )-colorman

cd "$(dirname "$0")"

chmod +x ./lolMiner && sudo ./lolMiner --algo ETHASH --pool $POOL --user $WALLET  $@
