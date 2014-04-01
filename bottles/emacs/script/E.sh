
main()
{
    local file="${1}"

    if "${file}" = ""
    then
        exec emacsclient --no-wait --alternate-editor="" --create-frame "$@"
    else
        emacsclient --no-wait --create-frame "${file}"
    fi
}

main "$@"
