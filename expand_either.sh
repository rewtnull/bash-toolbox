#!/bin/bash
# expand_either.sh - Expands first of found arguments

. expand.sh # Include expand from bash-toolbox. You can change expand to type -p on row 10

# expand_either($@ => $result)
expand_either() {
    for arg in ${@}; do
	local result=$(expand "${arg}") # fc
	[[ "${result}" != "" ]] && { echo "${result}"; return 0; }
    done
    return 1
}
