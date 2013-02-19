# Bash version sanity check. Accept void, return void
[[ "${BASH_VERSION}" < 4.1 ]] && { echo -e "${scrname} requires \033[1mbash v4.1 or newer\033[m."; exit 1; }
