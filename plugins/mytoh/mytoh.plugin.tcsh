
## environment
setenv LANG fi_FI.UTF-8
setenv LC_ALL fi_FI.UTF-8
setenv EDITOR vim
setenv PAGER less
setenv FTP_PASSIVE_MODE true
setenv MYVIMRC ~/.vimrc
setenv G_FILENAME_ENCODING @locale
setenv SCSH_LIB_DIRS ' "." "/usr/home/mytoh/.scsh" "/usr/local/lib/scsh/" "/usr/local/lib/scsh/0.6" "#f"'
setenv YPSILON_SITELIB ~/.ypsilon
setenv YPSILON_LOADPATH ~/.ypsilon
set catalog=ja.ayanami.cat
setenv NLSPATH ~/local/lib/tcsh/%N
setenv RLWRAP_HOME ~/.rlwrap
setenv _JAVA_OPTIONS '-Dawt.useSystemAAFontSettings=on'

setenv CURRENT_SHELL tcsh

## options
set nobeep
set history=100000
set savehist=(100000 merge)
set autolist=ambiguous
set autocorrect
set ignoreeof
set filec
set histdup=erase
set rmstar
set inputmode=insert
set listlinks
set listjobs=long
set ellipsis
set implicitcd=verbose
set color
set colorcat
set autoexpand
set complete=enhance
set path=(~/.cabal/bin ~/local/app/{v2c} ~/local/bin ~/local/homebrew/bin /usr/local/kde4/{sbin,bin} /usr/local/{sbin,bin} /{sbin,bin} /usr/{sbin,bin} )
set cdpath=(~/local/ ~/local/var/)
set noclobber
set notify
set autorehash
set highlight
set padhour
# set time=(8 "\
#     Time spent in user mode   (CPU seconds) : %Us\
#     Time spent in kernel mode (CPU seconds) : %Ss\
#     Total time                              : %Es\
#     CPU utilisation (percentage)            : %P\
#     Times the process was swapped           : %W\
#     Times of major page faults              : %F\
#     Times of major page faults              : %R")

#umask 022
limit coredumpsize 0

stty kill 
stty stop undef # disable C-s key


## aliases 
alias cwdcmd ls-F 
#alias jobcmd 'echo -n "]2\;\!#"'
alias pup 'sudo portsnap fetch update '
alias pcheck 'sudo portmaster -PBidav && sudo portaudit -Fdav && sudo portmaster --clean-packages --clean-distfiles'
#alias pup 'sudo portsnap fetch update && sudo pkg_replace -Bcav && sudo portaudit -av && rehash'
alias sc screen -U -D -RR  -s /bin/tcsh -m 
# alias tm 'if (tumx ls >/dev/null 2>&1) then \\ 
#               tumx attach                   \\ 
#             else                            \\ 
#               tmux -u2                      \\ 
#           endif'                               
alias mv 'mv -iv'
which dfc >& /dev/null
if ($? == 0) then
alias df 'dfc'
else
alias df 'df -h'
endif
alias pfetch 'sudo make  fetch-recursive'
alias pinst "sudo make  install distclean; rehash"
alias pconf sudo make  config-recursive
alias pclean 'sudo make  clean '
alias .. 'cd ..'
alias scsh 'rlwrap scsh'
alias ew 'emacs -f w3m'
alias single 'sudo shutdown now'
alias halt 'sync;sync;sync;sudo shutdown -p now'
alias reboot 'sync;sync;sync;sudo shutdown -r now'
alias sudo 'sudo -E '


## bindkeys
bindkey -e
bindkey '' delete-char
bindkey '' history-search-backward
bindkey '' history-search-forward
bindkey '' backward-delete-word



setenv PATH ~/.bin:$PATH