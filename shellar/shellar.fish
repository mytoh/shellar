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
  set p {$shellar_plugins_dir}/{$plugin}
  set c {$shellar_custom_plugin_dir}/{$plugin}
  if test -f {$c}/init.fish
    . {$c}/init.fish
    for file in {$c}/local/*.fish
      . {$file}
    end
  else if test -f {$p}/init.fish
    . {$p}/init.fish
    for file in {$p}/local/*.fish
      . {$file}
    end
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

# add completions dir to complete path
for plugin in {$shellar_plugins}
  set f {$shellar_plugins_dir}/{$plugin}/completions
  set c {$shellar_custom_plugin_dir}/{$plugin}/completions
  if test -d {$c}
    and not contains {$c} {$fish_complete_path}
    set -x fish_complete_path {$c} {$fish_complete_path}
  else if test -d {$f}
    and not contains {$f} {$fish_complete_path}
    set -x fish_complete_path {$f} {$fish_complete_path}
  end
end


# add bin dir to path
for plugin in {$shellar_plugins}
  set plugin_bin {$shellar_plugins_dir}/{$plugin}/bin
  set custom_bin {$shellar_custom_plugin_dir}/{$plugin}/bin
  if test -d {$plugin_bin}
    and not contains {$plugin_bin} {$PATH}
    set -gx PATH {$plugin_bin} {$PATH}
  end
  if test -d {$custom_bin}
    and not contains {$custom_bin} {$PATH}
    set -gx PATH {$custom_bin} {$PATH}
  end
end
