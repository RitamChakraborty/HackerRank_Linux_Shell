#!/usr/bin/env bash
# https://www.hackerrank.com/challenges/bash-tutorials-read-in-an-array/problem

arr=()
index=0

while read input; do
    arr[index]=$input
    ((index++))
done


for (( i = 0; i < index; ++i )); do
    echo -e ${arr[i]} '\c'
done