#!/bin/bash
PATH_TO_LOG_FILE=$1;
echo "Total requests count (based on lines count) is $(wc "$PATH_TO_LOG_FILE" | awk '{print $1}')"
