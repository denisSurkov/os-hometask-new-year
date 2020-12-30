#!/bin/bash
PATH_TO_LOG_FILE=$1;
echo "All error requests: "
grep "ERROR" "$PATH_TO_LOG_FILE"
