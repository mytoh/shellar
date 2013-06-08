
if ( $OSTYPE == "darwin") then
  set path=(~/local/homebrew/bin ~/local/homebrew/sbin $path)
  alias b 'brew'
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
endif
