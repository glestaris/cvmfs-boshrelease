#!/bin/bash
gfd() {
  bosh create release --force
  bosh upload release
  bosh deployment manifests/bosh-lite.yml
  bosh deploy --recreate
}
