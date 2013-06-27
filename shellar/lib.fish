
set shellar_lib_dir $shellar/lib
set shellar_plugins_dir $shellar/plugins
set shellar_themes_dir $shellar/themes

if not set -q shellar_custom
  set shellar_custom $HOME/.shellar_custom
end
set shellar_custom_plugin_dir $shellar_custom/plugins
