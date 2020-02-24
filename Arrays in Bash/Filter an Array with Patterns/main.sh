#!/usr/bin/env bash
# https://www.hackerrank.com/challenges/bash-tutorials-filter-an-array-with-patterns/problem

arr=()
index=0
regex='*[aA]+*'

while read input; do
    if [[ $input =~ ^[^aA]+$ ]]; then
        arr[index]=$input
        let index++
    fi
done

echo ${arr[@]}
