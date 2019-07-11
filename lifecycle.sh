#!/bin/bash

bosh delete-deployment -d nginx -n
bosh create-release --force 
bosh upload-release
bosh deploy -d nginx manifest.yml -n
