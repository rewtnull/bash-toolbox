# Expands first of found arguments. Accept any, return first
# In this example it uses my expand() function. You can change
# expand to type -p on row 6.
expand_either() {
    for arg in ${@}; do
	local result=$(expand "${arg}") # fc
	[[ "${result}" != "" ]] && { echo "${result}"; return 0; }
    done
    return 1
}
