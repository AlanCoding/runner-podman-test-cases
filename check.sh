#!/bin/bash

for dir in /tmp/alancoding_*
do
  echo $dir
  cat $dir/demo/artifacts/${dir: -5}/stdout
  echo ''
done
