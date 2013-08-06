function em
  emacsclient -n -a emacs {$argv}
end

shellar.push_to_path {$HOME}/.emacs.d/vendor/cask/bin