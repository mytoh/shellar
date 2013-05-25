
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
   set p $shellar_plugins_dir/$plugin/init.fish
   set c $shellar_custom_plugin_dir/$plugin/init.fish
  if test -f $c
  . $c
   else if test -f $p
  . $p
  end
end

# load theme
if test $shellar_theme
. $shellar_themes_dir/$shellar_theme/$shellar_theme.theme.fish
else
. $shellar_themes_dir/default/default.theme.fish
end



