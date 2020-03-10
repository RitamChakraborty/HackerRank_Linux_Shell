#!/usr/bin/env bash
# https://www.hackerrank.com/challenges/sed-command-5/problem

sed -r 's/(\d{4})\s(\d{4})\s(\d{4})\s(\d{4})/\4 \3 \2 \1/'