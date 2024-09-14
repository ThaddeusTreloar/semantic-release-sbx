#!/bin/bash

FEAT="$(git log -n 1 HEAD --format=%B | ggrep -Po '(?<=feat\()[^)]+')"
FIX="$(git log -n 1 HEAD --format=%B | ggrep -Po '(?<=fix\()[^)]+')"
PERF="$(git log -n 1 HEAD --format=%B | ggrep -Po '(?<=perf\()[^)]+')"
BREAKING="$(git log -n 1 HEAD --format=%B | ggrep -Po '(?<=BREAKING CHANGE: \()[^)]+')"

if [ $FEAT ]; then
    echo $FEAT
fi
if [ $FIX ]; then
    echo $FIX
fi
if [ $PERF ]; then
    echo $PERF
fi
if [ $BREAKING ]; then
    echo $BREAKING
fi

