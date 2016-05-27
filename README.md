# Deploying a BOSH VM with CVMFS

```
bosh target lite
bosh deployment ./manifests/bosh-lite.yml
bosh upload release https://github.com/glestaris/cvmfs-client-boshrelease/releases/download/v2.3.0/cvmfs-client-2.3.0.tgz
bosh deploy
```
