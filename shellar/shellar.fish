
if not test $shellar
  set shellar=$HOME/.shellar
end

. $shellar/shellar/lib.fish

# load library files
for config in $shellar_lib_dir/*.fish
  . $config
end

# load plugins
for plugin in $shellar_plugins
  if test $shellar_plugins_dir/$plugin/init.fish
  . $shellar_plugins_dir/$plugin/init.fish
  end
end

# load custom plugins
for plugin in $shellar_theme
  if test $shellar_custom_plugin_dir/$plugin/init.fish 
     . $shellar_custom_plugin_dir/$plugin/init.fish
  end
end

# load theme
if test $shellar_theme
. $shellar_themes_dir/$shellar_theme/$shellar_theme.theme.fish
else
. $shellar_themes_dir/default/default.theme.fish
end



