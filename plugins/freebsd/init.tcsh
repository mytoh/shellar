
alias pup 'sudo portsnap fetch update '
alias pcheck 'sudo portmaster -PBidav && sudo portaudit -Fdav && sudo portmaster --clean-packages --clean-distfiles'
#alias pup 'sudo portsnap fetch update && sudo pkg_replace -Bcav && sudo portaudit -av && rehash'
alias pfetch 'sudo make  fetch-recursive'
alias pinst "sudo make clean reinstall clean distclean; rehash"
alias pconf sudo make  config-recursive
alias pclean 'sudo make  clean '


if ({(procstat -a | grep squid >& /dev/null)}) then
setenv http_proxy http://127.0.0.1:3128
endif
