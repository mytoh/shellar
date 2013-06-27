if not set -q shellar
  set shellar $HOME/.shellar
end

. $shellar/shellar/lib.fish

# load library files
function shellar_load_configs
  for config in $shellar_lib_dir/*.fish
    . $config
  end
end

# load plugins
function shellar_load_plugins
  for plugin in $shellar_plugins
    set -l p $shellar_plugins_dir/$plugin/init.fish
    set -l c $shellar_custom_plugin_dir/$plugin/init.fish
    if test -f $c
      . $c
    else if test -f $p
      . $p
    end
  end
end

# load theme
function shellar_load_themes
  if set -q shellar_theme
    . $shellar_themes_dir/$shellar_theme/$shellar_theme.theme.fish
  else
    . $shellar_themes_dir/default/default.theme.fish
  end
end

# add functions dir to function path
function shellar_load_functions
  for plugin in $shellar_plugins
    set -l f $shellar_plugins_dir/$plugin/functions
    set -l c $shellar_custom_plugin_dir/$plugin/functions
    if test -d $c; and not contains $c $fish_function_path
      set -x fish_function_path $c $fish_function_path
    else if test -d $f; and not contains $f $fish_function_path
      set -x fish_function_path $f $fish_function_path
    end
  end
end

shellar_load_configs
shellar_load_plugins
shellar_load_themes
shellar_load_functions
