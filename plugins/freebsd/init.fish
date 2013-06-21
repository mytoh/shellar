switch (uname)
case FreeBSD

  set -x LD_LIBRARY_PATH /usr/local/linux-sun-jdk1.6.0/jre/lib/i386
  set -x SDL_VIDEODRIVER vgl
  set -x XDG_DATA_DIRS /usr/local/kde4/share

  function pcheck
    sudo portmaster -PBidav $argv
    and sudo portaudit -Fdav
  end

  function pfetch
    sudo make fetch-recursive
  end

  function pinst
    sudo make clean reinstall distclean clean
  end

  function pconf
    sudo make config-recursive
  end

  function pclean
    sudo make clean
  end

  function pkg_add
    pkg_add -v $argv
  end

  function pcreate
    pkg_create -RJvnb
  end

  function pcreateall
    pkg_info -Ea  | xargs -n 1 sudo pkg_create -Jnvb
  end

  function pm
    sudo portmaster -dBvy $argv
  end

  #if test $TERM = "cons25"
  #if test -e (which jfbterm)
  #  jfbterm
  #end
  #end

  function beastie
    echo "
                31m,        ,
               /(        )`
               \ \___   / |
               /- [37m_[31m  `-/  '\''
              ([37m/\/ \[31m \   /\
              [37m/ /   |[31m `    \
              [34mO O   [37m) [31m/    |
              [37m`-^--'\''[31m`<     '\''
             (_.)  _  )   /
              `.___/`    /
                `-----'\'' /
   [33m<----.[31m     __ / __   \
   [33m<----|====[31mO)))[33m==[31m) \) /[33m====]
   [33m<----'\''[31m    `--'\'' `.__,'\'' \
               |        |
                \       /       /\
           [36m______[31m( (_  / \______/
         [36m,'\''  ,-----'\''   |
         `--{__________)[37m                                 "

  end

  function orb
    echo '
     [31m```                        [31m`[31m
[31m    s` `.....---...[31m....--.```   -/[31m
    +o   .--`         [31m/y:`      +.[31m
     yo`:.            [31m:o      `+-[31m
      y/               [31m-/`   -o/[31m
     .-                  [31m::/sy+:.[31m
[37m     /                     [31m`--  /[31m
[37m    `[31m:                          [31m:`[31m
[37m    `[31m:                          [31m:`[31m
[37m     /                          [31m/[31m
[37m     .[31m-                        [31m-.[31m
      --                      [31m-.[31m
       `:`                  [01;31m`:`
         [31m.--             [37m`-[33m-.
            .---...[33m...----                         '

  end

end
