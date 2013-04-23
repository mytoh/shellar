
alias e 'emacsclient -n -a ""'

if (-d ~/.emacs.d) then
 if (-f ~/.emacs.d/shellenv.el) then
    rm ~/.emacs.d/shellenv.el
    endif
  echo -n '(setenv "PATH" ' > ~/.emacs.d/shellenv.el
  echo -n '"' >> ~/.emacs.d/shellenv.el
  echo -n "$PATH" >> ~/.emacs.d/shellenv.el
  echo -n '"' >> ~/.emacs.d/shellenv.el
  echo  ")" >> ~/.emacs.d/shellenv.el
endif

alias em-w 'emacs -f w3m'

if (-d "$HOME/.carton") then
  set path=($HOME/.carton/bin $path)

  alias em-cai 'carton install'
  alias em-cau 'carton update'
  alias em-caI 'carton init'
  alias em-cae 'carton exec'
endif
