set -gx shellar_bin_dir {$shellar}/bin
set -gx shellar_lib_dir {$shellar}/lib
set -gx shellar_plugins_dir {$shellar}/plugins
set -gx shellar_themes_dir {$shellar}/themes

if not set -q shellar_custom
  set -gx shellar_custom {$HOME}/.shellar_custom
end

set -gx shellar_custom_plugin_dir {$shellar_custom}/plugins

# path
set -gx PATH {$shellar_bin_dir} {$PATH}

function shellar.register_paths --argument dir
  # [[http://github.com/mashiro/dot-files/blob/master/.zshenv]]
  if test -d {$dir}
    if test -d {$dir}/bin
      and not contains {$dir}/bin {$PATH}
        set -gx PATH {$dir}/bin {$PATH}
    end
    if test -d {$dir}/sbin
      and not contains {$dir}/sbin {$PATH}
        set -gx PATH {$dir}/sbin {$PATH}
    end
    if test -d {$dir}/man
      and not contains {$dir}/man {$MANPATH}
        set -gx MANPATH {$dir}/man {$MANPATH}
    end
    if test -d {$dir}/share/man
      and not contains {$dir}/share/man {$MANPATH}
        set -gx MANPATH {$dir}/share/man {$MANPATH}
    end
    if test -d {$dir}/info
      and not contains {$dir}/info {$INFOPATH}
        set -gx INFOPATH {$dir}/info {$INFOPATH}
    end
  end
end

function shellar.push_to_path
  for p in $argv
    if test -d $p
      if not contains $p $PATH
        set -gx PATH $p $PATH
      end
    end
  end
end

function shellar.command_exists --argument cmd
  if type -f {$cmd} >  /dev/null
    true
  else
    false
  end
end
