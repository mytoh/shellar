
source {$shellar}/lib/env.fish
source {$shellar_lib_path}/util.fish

function shellar.init.load_bottles --description "load bottles"
  shellar.log "loading bottles"
  for bottle in {$shellar_bottles}
  shellar.log {$bottle}
    set p {$shellar_bottles_path}/{$bottle}
    set c {$shellar_custom_bottles_path}/{$bottle}
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
  for bottle in {$shellar_bottles}
    set f {$shellar_bottles_path}/{$bottle}/functions
    set c {$shellar_custom_bottles_path}/{$bottle}/functions
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
  for bottle in {$shellar_bottles}
    set f {$shellar_bottles_path}/{$bottle}/completions
    set c {$shellar_custom_bottles_path}/{$bottle}/completions
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
  for bottle in {$shellar_bottles}
    set bottle_bin {$shellar_bottles_path}/{$bottle}/bin
    set custom_bin {$shellar_custom_bottles_path}/{$bottle}/bin
    set bottle_script {$shellar_bottles_path}/{$bottle}/script
    set custom_script {$shellar_custom_bottles_path}/{$bottle}/script
    if test -d {$bottle_bin}
      and not contains {$bottle_bin} {$PATH}
      # shellar.add_variable PATH {$bottle_bin}
      shellar.push_to_path {$bottle_bin}
    end
    if test -d {$custom_bin}
      and not contains {$custom_bin} {$PATH}
      shellar.add_variable PATH {$custom_bin}
    end
    if test -d {$bottle_script}
      and not contains {$bottle_script} {$PATH}
      shellar.add_variable PATH {$bottle_script}
    end
    if test -d {$custom_script}
      and not contains {$custom_script} {$PATH}
      shellar.add_variable PATH {$custom_script}
    end
  end
end

function shellar.init
  shellar.init.load_bottles
  shellar.init.load_theme
  shellar.init.add_functions
  shellar.init.add_completions
  shellar.init.add_bin
end

