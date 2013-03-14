# Basename like function

# collapse($1 => basename of $1)
collapse() {
    local name="${1##*/}"
    echo "${name%${2}}"
}
