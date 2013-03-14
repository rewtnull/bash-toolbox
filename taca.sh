# taca.sh - Recursive tac like function. Reverse line order of input
# Usage: taca < filename / cat filename | taca.sh ...
taca () {
    local line
    if IFS= read -r line; then
	taca # recursive fc
	echo "${line}"
    fi
}

taca "$1"
#    [[ IFS= read -r line ]] && { taca; echo "${line}"; }
