
main()
{
    local file="${1}"

    if "${file}" = ""
    then
        emacsclient -n -a ''
    else
        emacsclient -n "${file}"
    fi
}

main "$@"
