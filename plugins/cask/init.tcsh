    if (-d "$HOME/.cask") then
  set path=($HOME/.cask/bin $path)

  alias em-cai 'cask install'
  alias em-cau 'cask update'
  alias em-caI 'cask init'
  alias em-cae 'cask exec'
    else
    curl -fsSkL 'https://raw.github.com/rejeep/cask.el/master/go' | sh

  set path=($HOME/.cask/bin $path)

  alias em-cai 'cask install'
  alias em-cau 'cask update'
  alias em-caI 'cask init'
  alias em-cae 'cask exec'
    endif
