#!/bin/bash
docker buildx build --platform linux/amd64 -t sealingp/jsonhero-web:latest --push .