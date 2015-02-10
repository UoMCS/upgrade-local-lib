#!/bin/bash

get_libs()
{
  cd $HOME/perl5/lib/perl5
  find . -name '*.pm' |
    xargs perl -E'
      for (@ARGV) {
        s!^\./!!;
        s!^x86_64-linux/!!;
        s!\.pm\z!!;
        s!/!::!g;
        say;
      }
   '
}

get_libs
