# Collapse argument. Equal to basename
collapse() {
    local name="${1##*/}"
    echo "${name%${2}}"
}
