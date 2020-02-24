#!/usr/bin/env bash
# https://www.hackerrank.com/challenges/bash-tutorials-concatenate-an-array-with-itself/problem

arr=($(cat))

arr=(${arr[@]} ${arr[@]} ${arr[@]})
echo ${arr[@]}