#!/usr/bin/env bash
# https://www.hackerrank.com/challenges/bash-tutorials---looping-and-skipping/problem

for (( i = 1; i < 100; ++i )); do
    if (($i%2==0)); then
           continue
    else
        echo $i
    fi
done
