
main()
{
    local file="${1}"

    echo $file

    if test "${file}" = ""
    then
        emacsclient -nw -a ''
    else
        emacsclient -nw "${file}"
    fi
}

main "${1}"
