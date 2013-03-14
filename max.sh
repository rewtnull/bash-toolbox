#!/bin/bash
# max.sh - Accepts array, returns lexicographically largest element of array

. gtoe.sh # Include gtoe.sh from bash-toolbox

# Example array of various dates
dates=( "1998-02-12" "2013-03-24" "2120-11-11" "2010-10-14" "2026-12-25" "2001-11-01" "1993-10-05" )

# max(${array[@]} => $largest)
max() {
    local array=( "$@" )
    if (( ${#array[@]} > "1" )); then # If array consists of one single element it's already the largest one
	for (( i=0; i < ${#array[@]}; i++ )); do
	    gtoe "${array[$i]}" "${largest}" && largest="${array[$i]}"
	done
    else
	largest="${array[0]}"
    fi
    echo "$largest"
}
max "${dates[@]}"
