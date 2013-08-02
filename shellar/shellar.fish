if not set -q shellar
  set -gx shellar {$HOME}/.shellar
end

. {$shellar}/shellar/lib.fish

# load library files
for config in {$shellar_lib_dir}/*.fish
  . {$config}
end

# load plugins
for plugin in {$shellar_plugins}
  set p {$shellar_plugins_dir}/{$plugin}/init.fish
  set c {$shellar_custom_plugin_dir}/{$plugin}/init.fish
  if test -f {$c}
    . {$c}
  else if test -f {$p}
    . {$p}
  end
end

# load theme
if set -q shellar_theme
  . {$shellar_themes_dir}/{$shellar_theme}/{$shellar_theme}.theme.fish
else
  . {$shellar_themes_dir}/default/default.theme.fish
end

# add functions dir to function path
for plugin in {$shellar_plugins}
  set f {$shellar_plugins_dir}/{$plugin}/functions
  set c {$shellar_custom_plugin_dir}/{$plugin}/functions
  if test -d {$c}
    and not contains {$c} {$fish_function_path}
    set -x fish_function_path {$c} {$fish_function_path}
  else if test -d {$f}
    and not contains {$f} {$fish_function_path}
    set -x fish_function_path {$f} {$fish_function_path}
  end
end

