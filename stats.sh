#!/bin/bash
PATH_TO_LOG_FILE="task-access.logs";
chmod +x ./bash_stats/*
./bash_stats/errors.sh "$PATH_TO_LOG_FILE"
echo '';
./bash_stats/long_requests.sh "$PATH_TO_LOG_FILE";
echo '';
./bash_stats/requests_count.sh "$PATH_TO_LOG_FILE";
echo '';
./bash_stats/top_users.sh "$PATH_TO_LOG_FILE";