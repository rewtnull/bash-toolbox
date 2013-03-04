# Accept any. Return any
verbose="1"
verbose_mode() {
    case ${verbose} in
	0) { echo -e "${@}" 1> /dev/null; };;
	1) { echo -e "${@}"; };;
    esac
}
