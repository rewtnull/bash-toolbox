# reads $1 to array, returns duplicates of each element of array
# Accept $1, return ${1[N]} ${1[N]}
duplicate() {
    [[ ${1} != "" ]] && chars=($( < ${1})) || exit 1
    for (( i = 0; "${i}" < "${#chars[@]}"; i++ )); do
	echo "${chars[${i}]} ${chars[${i}]}"
    done
    exit 0
}
duplicate "$1"
