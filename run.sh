#!/bin/bash

./installed-modules.sh > /tmp/local-lib.txt
./backup.sh
./bootstrap.sh
./upgrade-modules.sh /tmp/local-lib.txt
