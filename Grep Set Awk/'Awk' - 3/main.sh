#!/usr/bin/env bash
# https://www.hackerrank.com/challenges/awk-3/problem

awk '{
    total = $2 + $3 + $4
    avg = total / 3

    if (avg >= 80)
        print $0,": A"
    else if (avg >= 60)
        print $0,": B"
    else if (avg >= 50)
        print $0,": C"
    else
        print $0,": FAIL"
}'