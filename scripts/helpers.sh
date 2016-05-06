#!/bin/bash
gfd() {
  set -x
  [ -d src/cvmfs/test ] && rm -Rf src/cvmfs/test
  bosh create release --force
  bosh upload release
  bosh deployment manifests/bosh-lite.yml
  bosh deploy --recreate
  set +x
}
