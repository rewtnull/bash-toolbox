#!/bin/bash
# duplicate.sh - Reads N arguments, returns duplicate of each argument

# duplicate($@ => $@*2)
duplicate() {
    [[ ${@} != "" ]] && chars=( ${@} ) || exit 1
    for (( i = 0; i < "${#chars[@]}"; i++ )); do
	echo "${chars[${i}]} ${chars[${i}]}"
    done
    exit 0
}
duplicate "$@"
