#!/bin/bash
PATH_TO_LOG_FILE=$1;
MAX_TO_GET=3;

echo "Top $MAX_TO_GET longest requests: "
sort -r -k 5 -n "$PATH_TO_LOG_FILE" | head -n $MAX_TO_GET;