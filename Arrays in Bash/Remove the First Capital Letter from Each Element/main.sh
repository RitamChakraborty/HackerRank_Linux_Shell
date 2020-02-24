#!/usr/bin/env bash
# https://www.hackerrank.com/challenges/bash-tutorials-remove-the-first-capital-letter-from-each-array-element/problem

readarray arr
echo ${arr[@]/[A-Z]/.}