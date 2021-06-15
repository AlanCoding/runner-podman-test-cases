#!/bin/bash

DEFAULT_ITERS=2
ITERS="${1:-$DEFAULT_ITERS}"
echo $ITERS

rm -rf demo/artifacts
rm -rf demo/daemon.log

for ((i=0; i<=ITERS; i++))
do
  TMPDIR=$(mktemp -d -t alancoding_XXXXX)
  cp -Ra demo $TMPDIR
  echo $i
  echo $TMPDIR
  ansible-runner start -p test.yml $TMPDIR/demo -i ${TMPDIR: -5}
  # array[$i]="$TMPDIR"
  echo ''
done

sleep 5

# for item in ${array[*]}
for dir in /tmp/alancoding_*
do
  echo $dir
  tree $dir/demo/artifacts/${dir: -5}
  echo ''
done

# rm -rf /tmp/alancoding_*
# rm -rf demo/artifacts
