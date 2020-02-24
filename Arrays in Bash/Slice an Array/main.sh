#!/usr/bin/env bash
# https://www.hackerrank.com/challenges/bash-tutorials-slice-an-array/problem

arr=()
index=0

while read input; do
    arr[index]=$input
    ((index++))
done

for (( i = 3; i <= 7; ++i)); do
    echo -e ${arr[i]} '\c'
done