#!/usr/bin/env bash
# https://www.hackerrank.com/challenges/bash-tutorials---compute-the-average/problem

read n
sum=0

for (( i = 0; i < n; ++i )); do
    read num
    ((sum+=$((num))))
done
echo "${sum} / ${n}" | bc -l | xargs printf "%.3f"

