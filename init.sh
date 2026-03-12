#!/usr/bin/env bash
if [ -f config.json ]; then
  echo "config.json already exists. Delete it first to reinitialize."
  exit 1
fi
cp config.sample.json config.json
echo "Created config.json — add your YouTube API key and playlist IDs, then deploy."
