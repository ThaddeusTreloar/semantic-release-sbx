#!/bin/bash

MODULE=''

GIT_LOG="$(git log -n 1 HEAD --format=%B)"

MODULE="$MODULE$(echo "$GIT_LOG" | ggrep '^feat(' | ggrep -Po '(?<=: \()[^)]+')"
MODULE="$MODULE$(echo "$GIT_LOG" | ggrep '^fix(' | ggrep -Po '(?<=: \()[^)]+')"
MODULE="$MODULE$(echo "$GIT_LOG" | ggrep '^perf(' | ggrep -Po '(?<=: \()[^)]+')"
MODULE="$MODULE$(echo "$GIT_LOG" | ggrep '^BREAKING CHANGE:' | ggrep -Po '(?<=: \()[^)]+')"

echo $MODULE

