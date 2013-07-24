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

function shellar_register_paths
  # [[http://github.com/mashiro/dot-files/blob/master/.zshenv]]
  set dir {$argv[1]}
  if test -d {$dir}

    if test -d {$dir}/bin
      if not contains {$dir}/bin {$PATH}
        set -gx PATH {$dir}/bin {$PATH}
      end
    end
    if test -d {$dir}/sbin
      if not contains {$dir}/sbin {$PATH}
        set -gx PATH {$dir}/sbin {$PATH}
      end
    end
    if test -d {$dir}/man
      if not contains {$dir}/man {$MANPATH}
        set -gx MANPATH {$dir}/man {$MANPATH}
      end
    end
    if test -d {$dir}/share/man
      if not contains {$dir}/share/man {$MANPATH}
        set -gx MANPATH {$dir}/share/man {$MANPATH}
      end
    end
    if test -d {$dir}/info
      if not contains {$dir}/info {$INFOPATH}
        set -gx INFOPATH {$dir}/info {$INFOPATH}
      end
    end

  end
end

function shellar_push_to_path
  for p in $argv
    if test -d $p
      if not contains $p $PATH
        set -gx PATH $p $PATH
      end
    end
  end
end
