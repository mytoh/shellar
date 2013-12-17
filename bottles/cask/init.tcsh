if (! -d "$HOME/.cask") then
  curl -fsSkL 'https://raw.github.com/cask/cask/master/go' | python
endif

set path=($HOME/.cask/bin $path)

alias em-cai 'cask install'
alias em-cau 'cask update'
alias em-caI 'cask init'
alias em-cae 'cask exec'

