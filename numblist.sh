# numblist.sh - Returns numbered list of input arguments

. collapse.sh # Include collapse.sh from bash-toolbox. Change collapse to basename on line 9

# numblist($@ => N $@)
numblist() {
    local count="1"
    for arg in ${@}; do
	echo "${count} $(collapse "${arg}")" # fc
	let count++
    done
}
