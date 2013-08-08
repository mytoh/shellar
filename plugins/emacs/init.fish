function em
  emacsclient -n {$argv}
end

shellar.push_to_path {$HOME}/.emacs.d/vendor/cask/bin