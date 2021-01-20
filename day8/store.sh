#!/bin/bash
Dictionary_Builder () {
    declare -A The_Dictionary=([A_Key]=A_Word)
    echo "([${!The_Dictionary[@]}]=${The_Dictionary[@]})"
}

declare -A The_Output_Dictionary="$(Dictionary_Builder)"
echo key: ${!The_Output_Dictionary[@]}
echo value: ${The_Output_Dictionary[@]}
