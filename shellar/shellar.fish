
source {$shellar}/lib/env.fish
source {$shellar_lib_path}/util.fish

function shellar.init.load_plugins --description "load plugins"
  shellar.log "loading plugins"
  for plugin in {$shellar_plugins}
    set p {$shellar_plugins_path}/{$plugin}
    set c {$shellar_custom_plugins_path}/{$plugin}
    if test -f {$c}/init.fish
      shellar.xsource {$c}/init.fish
      shellar.source_all {$c}/local
    else if test -f {$p}/init.fish
      shellar.xsource {$p}/init.fish
      shellar.source_all {$p}/local
    end
  end
end

function shellar.init.load_theme --description "load theme"
  shellar.log "loading theme"
  if set -q shellar_theme
    source {$shellar_themes_path}/{$shellar_theme}/theme.fish
  else
    source {$shellar_themes_path}/default/theme.fish
  end
end

function shellar.init.add_functions --description "add functions dir to function path"
  shellar.log "adding functions path"
  for plugin in {$shellar_plugins}
    set f {$shellar_plugins_path}/{$plugin}/functions
    set c {$shellar_custom_plugins_path}/{$plugin}/functions
    if test -d {$c}
      and not contains {$c} {$fish_function_path}
      shellar.add_variable fish_function_path {$c}
    else if test -d {$f}
      and not contains {$f} {$fish_function_path}
      shellar.add_variable fish_function_path {$f}
    end
  end
end

function shellar.init.add_completions --description "add completions directory to path"
  shellar.log "adding completions path"
  for plugin in {$shellar_plugins}
    set f {$shellar_plugins_path}/{$plugin}/completions
    set c {$shellar_custom_plugins_path}/{$plugin}/completions
    if test -d {$c}
      and not contains {$c} {$fish_complete_path}
      shellar.add_variable fish_complete_path {$c}
    else if test -d {$f}
      and not contains {$f} {$fish_complete_path}
      shellar.add_variable fish_complete_path {$f}
    end
  end
end

function shellar.init.add_bin --description "add bin directory to path"
  shellar.log "adding bin path"
  for plugin in {$shellar_plugins}
    set plugin_bin {$shellar_plugins_path}/{$plugin}/bin
    set custom_bin {$shellar_custom_plugins_path}/{$plugin}/bin
    if test -d {$plugin_bin}
      and not contains {$plugin_bin} {$PATH}
      shellar.add_variable PATH {$plugin_bin}
    end
    if test -d {$custom_bin}
      and not contains {$custom_bin} {$PATH}
      shellar.add_variable PATH {$custom_bin}
    end
  end
end

function shellar.init
  shellar.init.load_plugins
  shellar.init.load_theme
  shellar.init.add_functions
  shellar.init.add_completions
  shellar.init.add_bin
end

