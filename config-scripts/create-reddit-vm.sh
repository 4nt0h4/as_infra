#!/bin/bash

gcloud compute instances create reddit-app --machine-type=e2-micro --tags=puma-server --image-family=reddit-full --boot-disk-size=20GB --restart-on-failure
