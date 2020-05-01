#!/bin/bash

cd /compile/source/linux-stable-xd

for i in `cat /compile/doc/stable-xd/misc.m8x/options/docker-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done

for i in `cat /compile/doc/stable-xd/misc.m8x/options/docker-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done
