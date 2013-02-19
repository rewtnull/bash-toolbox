# Returns numbered list of input arguments
# Use with either the collapse() function or replace collapse with basename
# on line 7.
numblist() {
    local count="1"
    for arg in ${@}; do
	echo "${count} $(collapse "${arg}")" # fc
	let count++
    done
}
