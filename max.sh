#!/bin/bash
# max.sh - Accepts array, returns lexicographically largest element of array

. gtoe.sh # Include gtoe.sh from bash-toolbox

# Example array of various dates
dates=( 1998-02-12 2003-01-24 2013-03-24 2120-11-11 2010-10-14 2001-11-01 1993-10-05 2026-12-25 1998-02-12 )

# max(${array[@]} => $largest)
max() {
    local dates=( "$@" )
    if (( "${#dates[@]}" > "1" )); then # If array consists of one single element it's already the largest one
	for (( i=0; i < ${#dates[@]}; i++ )); do
	    gtoe "${dates[$i]}" "${largest}" && largest="${dates[$i]}"
	done
    fi
    echo "$largest"
}
max "${dates[@]}"
