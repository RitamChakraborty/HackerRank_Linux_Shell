#!/usr/bin/env bash
# https://www.hackerrank.com/challenges/awk-4/problem

awk 'ORS=NR%2?";":"\n"'