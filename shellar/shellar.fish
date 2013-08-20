
source {$shellar}/shellar/env.fish
source {$shellar}/shellar/util.fish

## load library files
for config in {$shellar_lib_dir}/*.fish
  source {$config}
end

## load plugins
for plugin in {$shellar_plugins}
  set p {$shellar_plugins_dir}/{$plugin}
  set c {$shellar_custom_plugins_dir}/{$plugin}
  if test -f {$c}/init.fish
    shellar.xsource {$c}/init.fish
    shellar.source_all {$c}/local
  else if test -f {$p}/init.fish
    shellar.xsource {$p}/init.fish
    shellar.source_all {$p}/local
  end
end

## load theme
if set -q shellar_theme
  source {$shellar_themes_dir}/{$shellar_theme}/{$shellar_theme}.theme.fish
else
  source {$shellar_themes_dir}/default/default.theme.fish
end

## add functions dir to function path
for plugin in {$shellar_plugins}
  set f {$shellar_plugins_dir}/{$plugin}/functions
  set c {$shellar_custom_plugins_dir}/{$plugin}/functions
  if test -d {$c}
    and not contains {$c} {$fish_function_path}
    shellar.add_variable fish_function_path {$c}
  else if test -d {$f}
    and not contains {$f} {$fish_function_path}
    shellar.add_variable fish_function_path {$f}
  end
end

## add completions dir to complete path
for plugin in {$shellar_plugins}
  set f {$shellar_plugins_dir}/{$plugin}/completions
  set c {$shellar_custom_plugins_dir}/{$plugin}/completions
  if test -d {$c}
    and not contains {$c} {$fish_complete_path}
    shellar.add_variable fish_complete_path {$c}
  else if test -d {$f}
    and not contains {$f} {$fish_complete_path}
    shellar.add_variable fish_complete_path {$f}
  end
end

## add bin dir to path
for plugin in {$shellar_plugins}
  set plugin_bin {$shellar_plugins_dir}/{$plugin}/bin
  set custom_bin {$shellar_custom_plugins_dir}/{$plugin}/bin
  if test -d {$plugin_bin}
    and not contains {$plugin_bin} {$PATH}
    shellar.add_variable PATH {$plugin_bin}
  end
  if test -d {$custom_bin}
    and not contains {$custom_bin} {$PATH}
    shellar.add_variable PATH {$custom_bin}
  end
end

