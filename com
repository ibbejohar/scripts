#!/usr/bin/env bash

main=$(ls | grep .c)

bin=$(echo $main | sed 's/\.c//')

gcc -o $bin $main
./$bin
