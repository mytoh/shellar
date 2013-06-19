# talikko {{{
function __fish_complete_talikko_ports_tree
  set arguments (commandline -opc)

  for cmd in $arguments
    if contains -- $cmd install
      set -l p /usr/ports/*
      for i in $p
        if test -d $i
          echo (basename $i)
        end
      end
      return 0
    end
  end
end

complete -c talikko -n '__fish_use_subcommand' -xa 'install reinstall update search info deinstall'
complete -c talikko -f -a "(__fish_complete_talikko_ports_tree)"
complete -c tk -n '__fish_use_subcommand' -xa 'install reinstall update search info deinstall'
complete -c tk -f -a "(__fish_complete_talikko_ports_tree)"

if type -f napa >  /dev/null
  alias tk=talikko
end
#}}}