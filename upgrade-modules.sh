#!/bin/bash

upgrade_lib()
{
  local lib=$1

  echo "Upgrading module: $lib"
  perl -MCPAN -Mlocal::lib -e "CPAN::install($lib)"
}

upgrade_all()
{
  local libs_file=$1

  if [ -f "$libs_file" ]; then
      while read -r lib
        do
          if [ ! -z "$lib" ]; then
            upgrade_lib $lib
          fi
      done < "$libs_file"
  fi
}

export LIBS_FILE=$1

upgrade_all $LIBS_FILE
