# verbose.sh
verbose="1"

# verbose_mode($@ => $@)
verbose_mode() {
    case ${verbose} in
	0) ;;
	1) { echo -e "${@}"; };;
    esac
}
