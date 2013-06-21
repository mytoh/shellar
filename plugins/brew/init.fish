switch (uname)
case Darwin
  set -x HOMEBREW_USE_CLANG yes
  set -x PATH $HOME/local/homebrew/bin $HOME/local/homebrew/sbin $PATH

  if type -f brew >  /dev/null

    function b
      brew $argv
    end

    function bs
      brew -S $argv
    end

    function bi
      brew info $argv
    end

    function bl
      brew list $argv
    end

    function bh
      brew home $argv
    end

    function bopt
      brew options $argv
    end

    function bout
      brew outdated
    end

    function bup
      brew update
    end

    function bupg
      brew upgrade
    end

    function opbr
      open (brew --prefix)/
    end

    function cdbr
      pushd (brew --prefix)
    end

    function bcas
      brew cask $argv
    end

  end
end

