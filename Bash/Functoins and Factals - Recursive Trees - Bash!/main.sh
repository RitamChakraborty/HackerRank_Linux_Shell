#!/usr/bin/env bash

declare -A arr

for (( i = 0; i < 63; ++i )); do
    for (( j = 0; j < 100; ++j )); do
        arr[${i},${j}]='_'
    done
done

function drawTree() {
    nn=$1
    xx=$2
    yy=$3

    echo "n: ${nn} x: ${xx} y: ${yy}"

    for (( ii = 0; ii < nn; ++ii )); do
        arr[${xx},${yy}]='1'
        (( --xx ))
    done

    yy1=${yy}
    yy2=${yy}

    for (( ii = 0; ii < nn; ++ii )); do
        (( --yy1 ))
        (( ++yy2 ))
        arr[${xx},${yy1}]='1'
        arr[${xx},${yy2}]='1'
        (( --xx ))
    done
}

function printTree() {
    for (( I = 0; I < 63; ++I )); do
        for (( J = 0; J < 100; ++J )); do
            echo -e ${arr[$I,$J]}"\c"
        done
        echo
    done
}

function main() {
    read iteration
    N=$1
    X=$2
    Y=$3

    lists=()

    for (( i = 0; i < iteration; ++i )); do
        list=()

        if [[ ${i} -eq 0 ]]; then
            list[${#list[@]}]=${Y}
        else
            index=$(( i - 1 ))
            temp=${lists[${index}]}
            sub=$(( N * 2 ))

            for j in ${temp[@]}; do
                y1=$(( j - sub ))
                y2=$(( j + sub ))
                list[${#list[@]}]=${y1}
                list[${#list[@]}]=${y2}
            done
        fi

        for k in ${list[@]}; do
            drawTree ${N} ${X} ${k}
        done

        (( X -= N * 2 ))
        (( N /= 2 ))

        end=$(( iteration - 1 ))

        lists[${#lists[@]}]=${list[@]}
    done
}

main 16 62 49
printTree