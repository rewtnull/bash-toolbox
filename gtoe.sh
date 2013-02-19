# Greater than or equal. Use for string comparisons
gtoe() {
    [[ "${1}" > "${2}" || "${1}" == "${2}" ]]
}
