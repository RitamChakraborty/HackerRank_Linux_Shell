#!/usr/bin/env bash
# https://www.hackerrank.com/challenges/bash-tutorials-display-the-third-element-of-an-array/problem

arr=($(cat))
echo ${arr[3]}
