

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
