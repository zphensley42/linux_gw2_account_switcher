#!/bin/bash

acct_name="$2"
bottle_name="gw2_${acct_name}"

run_update="$1"
if [ "$run_update" = true ]; then
  flatpak run --command=bottles-cli com.usebottles.bottles run -p Gw2-64_update -b "${bottle_name}"
else
  echo "running with shareArchive"
  flatpak run --command=bottles-cli com.usebottles.bottles run -p Gw2-64 -b "${bottle_name}"
fi
