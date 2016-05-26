#!/bin/bash
BOSH_RELEASE_ROOT=$(cd $(dirname $BASH_SOURCE)/..; pwd)

tmpdir=$(mktemp -d)
mv $BOSH_RELEASE_ROOT/src/cvmfs/test $tmpdir
bosh create release $@
mv $tmpdir/test $BOSH_RELEASE_ROOT/src/cvmfs
rm -Rf RC$tmpdir
