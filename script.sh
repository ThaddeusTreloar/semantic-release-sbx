#!/bin/bash

MODULE=''

GIT_LOG="$(git log -n 1 HEAD --format=%B)"

MODULE="$MODULE$(echo "$GIT_LOG" | ggrep -Po '(?<=feat: \()[^)]+')"
MODULE="$MODULE$(echo "$GIT_LOG" | ggrep -Po '(?<=fix: \()[^)]+')"
MODULE="$MODULE$(echo "$GIT_LOG" | ggrep -Po '(?<=perf: \()[^)]+')"
MODULE="$MODULE$(echo "$GIT_LOG" | ggrep -Po '(?<=BREAKING CHANGE: \()[^)]+')"

echo $MODULE