#!/bin/bash

gcloud compute instances create reddit-app --machine-type=e2-micro --tags=puma-server --image=reddit-base-1617640048 --image-project=infra-309116 --boot-disk-size=20GB --restart-on-failure
