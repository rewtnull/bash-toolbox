# Accept string. Send errors to STDERR and exit
error() {
    { echo -e "${@}" 1>&2; exit 1; }
}
