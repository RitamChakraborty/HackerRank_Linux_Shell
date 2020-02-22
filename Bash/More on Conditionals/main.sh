#!/usr/bin/env bash
# https://www.hackerrank.com/challenges/bash-tutorials---more-on-conditionals/problem

read num1
read num2
read num3

if [[ "${num1}" -eq "${num2}" && "${num2}" -eq "${num3}" ]]; then
    echo 'EQUILATERAL'
elif [[ "${num1}" -eq "${num2}" || "${num2}" -eq "${num3}" ]]; then
    echo 'ISOSCELES'
else
    echo 'SCALENE'
fi
