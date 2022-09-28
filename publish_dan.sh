#!/bin/bash

cd "$(dirname "$0")"

[ -z "$SONA_REPO_ID" ] && echo SONA_REPO_ID not set && exit 1

TASKS=publishAllPublicationsToMavenRepository
if [ "$(uname)" = "Darwin" ]; then 
	TASKS="$(cat mac_targets.txt)"
fi

./gradlew -PsignPublications \
  $TASKS
