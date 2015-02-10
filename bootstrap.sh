#!/bin/bash

main()
{
  local local_lib_url='https://cpan.metacpan.org/authors/id/H/HA/HAARG/local-lib-2.000013.tar.gz'
  local save_path="$HOME/local-lib.tar.gz"
  local extract_path="$HOME/local-lib"

  wget "$local_lib_url" -O "$save_path"

  mkdir "$extract_path"
  tar xzvf "$save_path" -C "$extract_path" --strip-components=1

  cd "$extract_path"
  perl Makefile.PL --bootstrap
  make test && make install

  rm -rf "$extract_path"
  rm "$save_path"
}

main
