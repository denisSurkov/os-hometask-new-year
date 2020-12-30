#!/bin/bash
PATH_TO_LOG_FILE=$1;
TOP_USERS_COUNT=10;
echo "Top $TOP_USERS_COUNT users in logs in dedescending order: "
awk '{ print $4 }' "$PATH_TO_LOG_FILE" | uniq -c | sort -rn | head -n $TOP_USERS_COUNT | awk '{ print $2 }';
