switch (uname)
case Darwin
set -x HOMEBREW_USE_CLANG yes
set -x PATH $HOME/local/homebrew/bin $HOME/local/homebrew/sbin $PATH

if type -f brew >/dev/null
  alias b brew
  alias bs 'brew -S'
  alias bi 'brew info'
  alias bl 'brew list'
  alias bh 'brew home'
  alias bopt 'brew options'
  alias bout 'brew outdated'
  alias bup  'brew update'
  alias bupg 'brew upgrade'
  alias opbr "open `brew --prefix`/"
  alias cdbr "pushd `brew --prefix`"
end
end
end