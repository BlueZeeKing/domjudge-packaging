#!/bin/sh -eu

if [ "$#" -ne 1 ]
then
	echo "Usage $0 <docker tag>"
fi
docker_tag="$1"

docker buildx build --push --platform linux/arm64 -t "${docker_tag}" -f domserver/Dockerfile .

