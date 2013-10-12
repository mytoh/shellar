
if ( "$OSTYPE" == "FreeBSD" ) then
    
    alias pup 'sudo portsnap fetch update '
    alias pcheck 'sudo portmaster -PBiydav && sudo portaudit -Fdav && sudo portmaster --clean-packages --clean-distfiles'
    #alias pup 'sudo portsnap fetch update && sudo pkg_replace -Bcav && sudo portaudit -av && rehash'
    alias pfetch 'sudo make fetch-recursive'
    alias pinst "sudo make -s clean reinstall clean ; rehash"
    alias pconf sudo make config-recursive
    alias pclean 'sudo make clean '
    alias ppconf 'make pretty-print-config'
    alias psconf 'make showconfig'
    alias prmconf 'make rmconfig'
    alias puniname 'make -VUNIQUENAME'

    if ( -X portmaster ) then
        alias pm 'sudo portmaster -dBvy '
    endif

    if ( -X pkg_replace ) then
        alias prep sudo pkg_replace
    endif

   if ({(procstat -a | grep squid >& /dev/null)}) then
       setenv http_proxy http://127.0.0.1:3128
   endif


endif

